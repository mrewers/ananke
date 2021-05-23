@react.component
let make = () => {
  let toDo: array<SwimLane.ticket> = [{id: "1", title: "To Do One"}, {id: "2", title: "To Do Two"}]
  let progress: array<SwimLane.ticket> = [
    {id: "3", title: "Working on this"},
    {id: "4", title: "And Another one"},
    {id: "6", title: "One More For Good Measure"},
  ]
  let done: array<SwimLane.ticket> = [{id: "5", title: "Done Ticket"}]

  <div className="flex">
    <SwimLane tickets={toDo} title="To Do" />
    <SwimLane tickets={progress} title="In Progress" />
    <SwimLane tickets={done} title="Done" />
  </div>
}
