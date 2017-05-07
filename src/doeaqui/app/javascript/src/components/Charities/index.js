import Charities from './components/Charities';
import React from 'react'
import ReactDOM from 'react-dom'
import PropTypes from 'prop-types'

document.addEventListener('DOMContentLoaded', () => {
  ReactDOM.render(
    <Charities name="React" />,
    document.body.appendChild(document.createElement('div')),
  )
})
