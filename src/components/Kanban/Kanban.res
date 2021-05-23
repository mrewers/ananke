type lane = {id: string, title: string}

@react.component
let make = () => {
  let lanes: array<lane> = [
    {id: "1", title: "To Do"},
    {id: "2", title: "In Progress"},
    {id: "3", title: "Testing"},
    {id: "4", title: "Done"},
  ]

  let tickets: array<SwimLane.ticket> = [
    {id: "1", lane: "1", title: "To Do One"},
    {id: "2", lane: "1", title: "To Do Two"},
    {id: "3", lane: "2", title: "Working on this"},
    {id: "4", lane: "2", title: "And Another one"},
    {id: "6", lane: "2", title: "One More For Good Measure"},
    {id: "5", lane: "4", title: "Done Ticket"},
  ]

  let content = {
    Belt.Array.map(lanes, lane => {
      let inLane = ticket => (ticket: SwimLane.ticket).lane == lane.id
      let tix = Js.Array.filter(inLane, tickets)

      <SwimLane key={lane.id} tickets={tix} title={lane.title} />
    })
  }

  <div className="flex"> {React.array(content)} </div>
}
