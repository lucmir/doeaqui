import React from 'react';
import { BrowserRouter, Switch, Route } from "react-router-dom";

import App from "./components/App";
import NotFound from './components/NotFound';

const Routes = (props) => (
  <BrowserRouter>
    <Switch>
      <Route exact path='/' component={App}/>
      <Route path='*' component={NotFound}/>
    </Switch>
  </BrowserRouter>
);

export default Routes;
