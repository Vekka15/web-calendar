@EventForm = React.createClass
    getInitialState: ->
      name: ''
      description: ''
    handleSubmit: (e) ->
      e.preventDefault()
      $.post '', { event: @state }, (data) =>
        @props.handleNewRecord data
        @setState @getInitialState()
      , 'JSON'
    render: ->
      React.DOM.form
        className: 'test'
        onSubmit: @handleSubmit
        React.DOM.div
          className: 'test1'
          React.DOM.input
            type: 'text'
            placeholder: 'Name'
            name: 'name'
            value: @state.name
            className: 'input'
        React.DOM.div
          className: 'form-group'
          React.DOM.input
            type: 'text'
            placeholder: 'Title'
            name: 'description'
            value: @state.description
            className: 'input'
        React.DOM.button
          type: 'submit'
          className: 'btn btn-primary'
          'Create record'
