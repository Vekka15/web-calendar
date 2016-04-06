@Event = React.createClass
    render: ->
      React.DOM.tr null,
        React.DOM.td null, @props.event.name
        React.DOM.td null, @props.event.description
