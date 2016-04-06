@EventForm = React.createClass
    getInitialState: ->
      name: ''
      description: ''
    handleChange: (e) -> #obsługa pojawiania sie wartosci w inpucie
      name = e.target.name
      @setState "#{ name }": e.target.value
    handleSubmit: (e) ->
      e.preventDefault()
      $.post '', { event: @state }, (data) =>
        @props.handleNewEvent data
        @setState @getInitialState()
      , 'JSON'

    valid: ->
      @state.name && @state.description
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
            onChange: @handleChange
        React.DOM.div
          className: 'form-group'
          React.DOM.input
            type: 'text'
            placeholder: 'Title'
            name: 'description'
            value: @state.description
            className: 'input'
            onChange: @handleChange
        React.DOM.button
          type: 'submit'
          className: 'btn btn-primary'
          disabled: !@valid()
          'Create event'
