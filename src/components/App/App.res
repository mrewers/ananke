@react.component
let make = () => {
  let tickets: array<SwimLane.ticket> = [
    {id: "1", lane: "1", title: "To Do One"},
    {id: "2", lane: "1", title: "To Do Two"},
    {id: "3", lane: "2", title: "Working on this"},
    {id: "4", lane: "2", title: "And Another one"},
    {id: "6", lane: "2", title: "One More For Good Measure"},
    {id: "5", lane: "4", title: "Done Ticket"},
  ]

  let url = RescriptReactRouter.useUrl()

  switch url.path {
  | list{"project", "kanban"} => <Kanban tickets={tickets} />
  | list{"project", "backlog"} => <Backlog tickets={tickets} />
  | list{"project"} => <Project id={url.hash} />
  | _ => <FourOhFour />
  }
}
