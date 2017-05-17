import React from "react";
import { BrowserRouter, Switch, Route } from "react-router-dom";
import Home from "./components/Home";
import AboutPage from "./components/AboutPage";
import NotFound from "./components/NotFound";

const Routes = () => (
  <BrowserRouter>
    <Switch>
      <Route exact path='/' component={Home}/>
      <Route exact path='/about' component={AboutPage}/>
      <Route path='*' component={NotFound}/>
    </Switch>
  </BrowserRouter>
);

export default Routes;
