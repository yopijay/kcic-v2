// Libraries
import { useContext } from "react";
import { Box, FormLabel, Skeleton, Stack, TextField, Typography } from "@mui/material";
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import { faEllipsisH, faFileArrowDown, faFileArrowUp, faMagnifyingGlass, faPlus } from "@fortawesome/free-solid-svg-icons";
import { Link } from "react-router-dom";

// Core
import { ListCntxt } from "core/context/List"; // Context
import { exporttoexcel, importfromexcel, successToast, useGet, usePost } from "core/function/global"; // Functions
import { excel, look, records, upload } from "core/api"; // API
import { ProfileCntx } from "core/context/Profile"; // Context

// Constants
import { btnexport, btnicon, btnimport, btntxt, loader, search } from "./index.style"; // Styles

// Layouts
import Dashboard from "./layouts/Dashboard";
import Item from "./layouts/Item";

const Index = () => {
    let name = `KC-EXPORT-DEPARTMENT-${parseInt((new Date()).getMonth()) + 1}${(new Date()).getDate()}${(new Date()).getFullYear()}`;
    const { setList } = useContext(ListCntxt);
    const { data } = useContext(ProfileCntx);
    const { mutate: find, isLoading: finding } = usePost({ fetch: look, onSuccess: (data) => setList(data) });
    const { isFetching: fetching } = useGet({ key: ['dpt_list'], fetch: records({ table: 'tbl_department', data: {} }), options: { refetchOnWindowFocus: false }, onSuccess: (data) => setList(data) });
    const { refetch: original} = useGet({ key: ['dpt_original'], fetch: excel({ table: 'tbl_department', type: 'original' }), options: { enabled: false }, 
                                                                onSuccess: (data) => exporttoexcel(data, 'Department', `${name} (Admin's copy)`) });
    const { refetch: formatted } = useGet({ key: ['dpt_formatted'], fetch: excel({ table: 'tbl_department', type: 'formatted' }), options: { enabled: false }, 
                                                                    onSuccess: (data) => exporttoexcel(data, 'Department', `${name}`) });
    const { mutate: uploadfile, isLoading: uploading } = usePost({ fetch: upload, 
                                                                                                        onSuccess: (data) => { 
                                                                                                            if(data.result === 'success') { 
                                                                                                                successToast(data.message, 3000, setTimeout(() => { window.location.href = '/maintenance/department'; }, 3000)); 
                                                                                                            } 
                                                                                                        } 
                                                                                                    });

    return (
        <Stack direction= "column" justifyContent= "flex-start" alignItems= "stretch" sx= {{ width: '100%', height: '100%' }} spacing= { 3 }>
            <Stack direction= "column" justifyContent= "flex-start" alignItems= "stretch" spacing= { 1 }>
                <Typography variant= "h6" sx= {{ fontFamily: 'Boldstrom', color: '#3C4048' }}>Department</Typography>
                <Dashboard />
                <Stack direction= "row" justifyContent= "space-between" alignItems= "center">
                    <form autoComplete= "off">
                        <Box sx= { search }>
                            <FontAwesomeIcon icon= { faMagnifyingGlass } size= "sm" style= {{ margin: '8px' }} />
                            <TextField variant= "standard" size= "small" fullWidth InputProps= {{ disableUnderline: true }} placeholder= "Search..." sx= {{ padding: '5px 0 0 0' }}
                                onChange= { e => { find({ table: 'tbl_department', data: { condition: e.target.value !== '' ? (e.target.value).toUpperCase() : e.target.value } }); } } />
                        </Box>
                    </form>
                    <Stack direction= "row" justifyContent= "flex-end" alignItems= "center" sx= {{ flexGrow: 1 }} spacing= { 1 }>
                        <input type= "file" name= "upload-file" id= "upload-file" style= {{ width: '0.1px', height: '0.1px', opacity: 0, overflow: 'hidden', position: 'absolute', zIndex: -1 }} 
                            onChange= { async e => { uploadfile({ table: 'tbl_department', data: { json: await importfromexcel(e), id: atob(localStorage.getItem('token')) } }); } } />
                        <FormLabel htmlFor= "upload-file" sx= { btnimport }><FontAwesomeIcon icon= { !uploading ? faFileArrowUp : faEllipsisH } style= {{ color: '#FFFFFF' }} size= "lg" /></FormLabel>
                        <Typography onClick= { () => { if(data.user_level === 'superadmin') { original(); } formatted(); }} sx= { btnexport }>
                            <FontAwesomeIcon icon= { faFileArrowDown } style= {{ color: '#FFFFFF' }} size= "lg" />
                        </Typography>
                        <Typography component= { Link } to= "/maintenance/department/form/new" sx= { btnicon }>
                            <FontAwesomeIcon icon= { faPlus } style= {{ color: '#FFFFFF' }} size= "lg" />
                        </Typography>
                        <Typography component= { Link } to= "/maintenance/department/form/new" sx= { btntxt }>New Department</Typography>
                    </Stack>
                </Stack>
            </Stack>
            { !fetching && !finding ? <Item /> :  
                <Stack direction= "row" justifyContent= "space-between" alignItems= "center" sx= { loader } spacing= { 2 }>
                    <Stack direction= "column" justifyContent= "flex-start" alignItems= "flex-start" spacing= { 1 } sx= {{ flexGrow: 1 }}>
                        <Skeleton variant= "rounded" sx= {{ width: '50%', height: '10px' }} />
                        <Skeleton variant= "rounded" sx= {{ width: '25%', height: '10px' }} />
                        <Skeleton variant= "rounded" sx= {{ width: '27%', height: '10px' }} />
                    </Stack>
                    <Stack direction= "row" justifyContent= "flex-start" alignItems= "center" spacing= { 2 }>
                        <Skeleton variant= "circular" sx= {{ width: '10px', height: '10px' }} />
                        <Stack direction= "row" justifyContent= "flex-start" alignItems= "center" spacing= { 1 }>
                            <Skeleton variant= "rounded" sx= {{ padding: '15px' }} />
                            <Skeleton variant= "rounded" sx= {{ padding: '15px' }} />
                        </Stack>
                    </Stack>
                </Stack> }
        </Stack>
    );
}

export default Index;