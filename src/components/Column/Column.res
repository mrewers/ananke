@react.component
let make = (~children: React.element, ~title: string) => {
  <div className="flex flex-1 flex-col p-4 space-y-4">
    <h2 className="font-bold text-lg"> {React.string(title)} </h2> children
  </div>
}
