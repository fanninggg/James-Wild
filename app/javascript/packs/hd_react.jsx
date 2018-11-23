// Run this example by adding <%= javascript_pack_tag 'hd_react' %> anywhere you damn well please

import React from 'react'
import ReactDOM from 'react-dom'
import PropTypes from 'prop-types'

const Hello = props => (
  <div>
    <p style={{lineHeight: 2}}>{props.name}. Find recommendations in hd_react.jsx</p>
  </div>
)

document.addEventListener('DOMContentLoaded', () => {
  ReactDOM.render(
    <div style={{display: 'flex', justifyContent: 'space-around', textAlign: 'center', marginTop: 50}}>
      <div style={{width: '50%'}}>
        <p>Devise Ready</p>
        <div style={{display: 'flex', justifyContent: 'space-around'}}>
          <i style={{lineHeight: 2, marginRight: 10}} className="fab fa-font-awesome-flag"></i>
          <p style={{lineHeight: 2, marginRight: 10}}>Fontawesome Ready</p>
          <i style={{lineHeight: 2}} className="fab fa-font-awesome-flag"></i>
        </div>
        <a href="" className="btn btn-primary">Bootstrap Ready</a>
        <Hello name="React Ready" />
        <p>The site will have only one user, the page owner. No sign up. All the project CRUD is hidden behind user_signed_in? logic</p>
      </div>
    </div>,
    document.body.appendChild(document.createElement('div')),
  )
})


// **************************Recommendations*********************************

// I recommend that when adding react to a project we create a seperate folder alongside packs to house react code
// I also reommend that wecreate a seperate controller which will return JSON for us to parse if we need redux implementation
// For an example of this architecture see https://github.com/fanninggg/ReactOnRails-Chat
