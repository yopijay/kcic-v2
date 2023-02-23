// Libraries
import { Grid, Skeleton, Stack, TextField, Typography } from "@mui/material";
import { useContext } from "react";

// Core
import { FormCntxt } from "core/context/Form"; // Context

// Constants
import { input } from "../../../../index.style"; // Styles

const Mouse = ({ fetching }) => {
    const { register } = useContext(FormCntxt);

    return (
        <Grid container direction= "row" justifyContent= "flex-start" alignItems= "flex-start" spacing= { 1 }>
            <Grid item xs= { 12 } sm= { 6 }>
                <Stack direction= "column" justifyContent= "flex-start" alignItems= "stretch">
                    <Typography gutterBottom variant= "body2">*Asset Tag</Typography>
                    { fetching ? <Skeleton variant= "rounded" height= "35px" /> :
                        <TextField { ...register('asset_tag') } name= "asset_tag" variant= "standard" InputProps= {{ disableUnderline: true }} disabled= { true } sx= { input } /> }
                </Stack>
            </Grid>
            <Grid item xs= { 12 } sm= { 6 }>
                <Stack direction= "column" justifyContent= "flex-start" alignItems= "stretch">
                    <Typography gutterBottom variant= "body2">Serial No. / Product ID</Typography>
                    { fetching ? <Skeleton variant= "rounded" height= "35px" /> :
                        <TextField { ...register('serial_no') } name= "serial_no" variant= "standard" InputProps= {{ disableUnderline: true }} disabled= { true } sx= { input } /> }
                </Stack>
            </Grid>
            <Grid item xs= { 12 } sm= { 4 }>
                <Stack direction= "column" justifyContent= "flex-start" alignItems= "stretch">
                    <Typography gutterBottom variant= "body2">Brand</Typography>
                    { fetching ? <Skeleton variant= "rounded" height= "35px" /> :
                        <TextField { ...register('brand') } name= "brand" variant= "standard" InputProps= {{ disableUnderline: true }} disabled= { true } sx= { input } /> }
                </Stack>
            </Grid>
            <Grid item xs= { 12 } sm= { 8 } md= { 4 }>
                <Stack direction= "column" justifyContent= "flex-start" alignItems= "stretch">
                    <Typography gutterBottom variant= "body2">Model</Typography>
                    { fetching ? <Skeleton variant= "rounded" height= "35px" /> :
                        <TextField { ...register('model') } name= "model" variant= "standard" InputProps= {{ disableUnderline: true }} disabled= { true } sx= { input } /> }
                </Stack>
            </Grid>
            <Grid item xs= { 6 } sm= { 3 } md= { 4 }>
                <Stack direction= "column" justifyContent= "flex-start" alignItems= "stretch">
                    <Typography gutterBottom variant= "body2">Color</Typography>
                    { fetching ? <Skeleton variant= "rounded" height= "35px" /> :
                        <TextField { ...register('color') } name= "color" variant= "standard" InputProps= {{ disableUnderline: true }} disabled= { true } sx= { input } /> }
                </Stack>
            </Grid>
            <Grid item xs= { 6 } sm= { 3 } md= { 4 }>
                <Stack direction= "column" justifyContent= "flex-start" alignItems= "stretch">
                    <Typography gutterBottom variant= "body2">DPI</Typography>
                    { fetching ? <Skeleton variant= "rounded" height= "35px" /> :
                        <TextField { ...register('dpi') } type= "number" name= "dpi" variant= "standard" InputProps= {{ disableUnderline: true }} disabled= { true } sx= { input } /> }
                </Stack>
            </Grid>
            <Grid item xs= { 5 } sm= { 3 }>
                <Stack direction= "column" justifyContent= "flex-start" alignItems= "stretch">
                    <Typography variant= "body2" gutterBottom>Interface</Typography>
                    { fetching ? <Skeleton variant= "rounded" height= "35px" /> :
                        <TextField { ...register('interface') } name= "interface" variant= "standard" InputProps= {{ disableUnderline: true }} disabled= { true } sx= { input } /> }
                </Stack>
            </Grid>
            <Grid item xs= { 7 } sm= { 3 }>
                <Stack direction= "column" justifyContent= "flex-start" alignItems= "stretch">
                    <Typography variant= "body2" gutterBottom>Orientation</Typography>
                    { fetching ? <Skeleton variant= "rounded" height= "35px" /> :
                        <TextField { ...register('orientation') } name= "orientation" variant= "standard" InputProps= {{ disableUnderline: true }} disabled= { true } sx= { input } /> }
                </Stack>
            </Grid>
            <Grid item xs= { 8 }>
                <Stack direction= "column" justifyContent= "flex-start" alignItems= "stretch">
                    <Typography gutterBottom variant= "body2">Date purchased</Typography>
                    { fetching ? <Skeleton variant= "rounded" height= "35px" /> :
                        <TextField { ...register('date_purchased') } name= "date_purchased" variant= "standard" InputProps= {{ disableUnderline: true }} disabled= { true } sx= { input } /> }
                </Stack>
            </Grid>
            <Grid item xs= { 4 }>
                <Stack direction= "column" justifyContent= "flex-start" alignItems= "stretch">
                    <Typography gutterBottom variant= "body2">Warranty</Typography>
                    { fetching ? <Skeleton variant= "rounded" height= "35px" /> :
                        <TextField { ...register('warranty') } name= "warranty" variant= "standard" type= "number" 
                            InputProps= {{ disableUnderline: true }} disabled= { true } sx= { input } /> }
                </Stack>
            </Grid>
        </Grid>
    );
}

export default Mouse;