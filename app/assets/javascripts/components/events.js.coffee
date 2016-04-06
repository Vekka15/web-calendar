@Events = React.createClass
    getInitialState: ->
      events: @props.data
    getDefaultProps: ->
      events: []
    addRecord: (record) ->
      records = @state.records.slice()
      records.push record
      @setState records: records
    render: ->

      React.DOM.div
        idName: 'events'
        React.DOM.a
          "data-remote": true
          href: '/events/new'
          'New'
        React.DOM.h2
          className: 'title'
          'Events'
        React.createElement EventForm, handleNewRecord: @addRecord
        React.DOM.table
          className: 'table table-bordered'
          React.DOM.thead null,
            React.DOM.tr null,
              React.DOM.th null, 'Name'
              React.DOM.th null, 'Desc'
          React.DOM.tbody null,
            for event in @state.events
              React.createElement Event, key: event.id, event: event
