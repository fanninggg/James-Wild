// Run this example by adding <%= javascript_pack_tag 'hello_react' %> to the head of your layout file,
// like app/views/layouts/application.html.erb. All it does is render <div>Hello React</div> at the bottom
// of the page.

import React from 'react'
import ReactDOM from 'react-dom'
import PropTypes from 'prop-types'

const Hello = props => (
  <div>
    <h1>Hello from {props.name}!</h1>
    <p>My recommendation would be to add a seperate folder alongside packs to do our react stuff in.</p>
  </div>
)

document.addEventListener('DOMContentLoaded', () => {
  ReactDOM.render(
    <div>
      <Hello name="React" />
    </div>,
    document.body.appendChild(document.createElement('div')),
  )
})
