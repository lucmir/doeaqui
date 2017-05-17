import React, { Component } from "react";
import Header from "../../Header";

class Charities extends Component {
  renderCharities = () => {
    return (
      <section className="section">
        <div className="container">
          <h1 className="title">Onde doar</h1>
          <h2 className="subtitle">Encontre locais de doação próximos de você</h2>
          <div className="field has-addons">
            <p className="control">
              <input className="input" type="text" placeholder="Find a repository" />
            </p>
            <p className="control">
              <a className="button"> Search </a>
            </p>
          </div>
        </div>
      </section>
    )
  }

  render() {
    return (
      <div>
        <Header />
        {this.renderCharities()}
      </div>
    );
  }
}

export default Charities;
