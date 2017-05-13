import React from 'react';
import { HashRouter, Switch, Route } from "react-router-dom";

import App from "./components/App";
import NotFound from './components/NotFound';

const Routes = (props) => (
  <HashRouter>
    <Switch>
      <Route exact path='/' component={App}/>
      <Route path='*' component={NotFound}/>
    </Switch>
  </HashRouter>
);

export default Routes;
