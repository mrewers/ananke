@react.component
let make = () => {
  let url = RescriptReactRouter.useUrl()

  <nav className="bg-canvas shadow-lg py-6 px-8">
    <ul className="flex flex-col space-y-4">
      <li>
        <a className="focus-dark font-bold p-2" href={`/project/kanban#${url.hash}`}>
          {React.string("Kanban")}
        </a>
      </li>
      <li>
        <a className="focus-dark font-bold p-2" href={`/project/backlog#${url.hash}`}>
          {React.string("Backlog")}
        </a>
      </li>
    </ul>
  </nav>
}
