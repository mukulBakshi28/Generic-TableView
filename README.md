# Generic-TableView

As Building out iOS Applications there are 95% case, where we have to use UITableView in many different controllers. So writing out lot of tableView
code, ie implementing delegates & dataSources, then passing modal object to UITableViewCells can be a lot of code repetation in many controllers 🧐.

So to avoid this, i have created a wrapper above this by using Generics,Protocols & PAT, this helps in reusing the code and save's time.

```
    var genericTable:GenericTableHandler<CustomTableCell,DataModalHandler>!
```
This Generic class simply accept the type of UITableViewCell that need's to be render and modal object that holds your row's array of a particular type, also confirm the tableView cell class to a Protocol.
```
protocol ConfigurableCell {
    associatedtype T
    static var cellReuseIdentifier:String {get}
    func configureCellWith(data:T)
}
```
Customise this wrapper as per as your need & if you need to capture the tableviewDidSelect action then add delegates or closure as per as your requirements.
Enjoy 👍😎
