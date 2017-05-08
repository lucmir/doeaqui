import React, { Component } from "react";
import { HashRouter, Switch, Route } from "react-router-dom";
import Charities from "./../../Charities/components/Charities";

class App extends Component {
  render() {
    return (
      <HashRouter>
        <Switch>
          <Route exact path='/' component={Home}/>
          <Route path='/charities' component={Charities}/>
        </Switch>
      </HashRouter>
    );
  }
}

const Home = () => <h1>Hello from Home!</h1>;

export default App;
