@EventForm = React.createClass
    getInitialState: ->
      name: ''
      description: ''
    render: ->
        React.DOM.form
        React.DOM.input
          type: 'text'
          placeholder: 'Name'
          name: 'name'
          value: @state.name
        React.DOM.input
          type: 'text'
          placeholder: 'Desc'
          name: 'description'
          value: @state.description
        React.DOM.button
          type: 'submit'
          'Create event'
@EventForm = React.createClass
    render: ->
      React.DOM.h2
        className: 'records'
        'Event'
