@react.component
let make = (~children: React.element) => {
  <article className="bg-white border-solid border border-gray-200 p-4 rounded shadow">
    children
  </article>
}
