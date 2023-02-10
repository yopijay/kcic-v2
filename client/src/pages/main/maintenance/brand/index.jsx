// Libraries
import { Stack, ThemeProvider } from "@mui/material";
import { Route, Routes } from "react-router-dom";

// Core
import { ListPrvdr } from "core/context/List"; // Context
import { input } from "core/theme/form.theme"; // Theme
import { FormPrvdr } from "core/context/Form"; // Context

// Layouts
import List from './layouts/list';
import Form from './layouts/form';

// Custom styles
const container = {
    overflow: 'hidden',
    width: '100%',
    height: '100%',
    '&::-webkit-scrollbar': { display: 'none' }
}

const Index = () => {
    return (
        <Stack direction= "column" justifyContent= "flex-start" alignItems= "flex-start" sx= { container }>
            <Routes>
                <Route exact path= "/" element= { <ThemeProvider theme= { input }><ListPrvdr><List /></ListPrvdr></ThemeProvider> } />
                <Route exact path= "/form/:type" element= { <FormPrvdr><Form /></FormPrvdr> } />
                <Route exact path= "/form/:type/:id" element= { <FormPrvdr><Form /></FormPrvdr> } />
            </Routes>
        </Stack>
    );
}

export default Index;