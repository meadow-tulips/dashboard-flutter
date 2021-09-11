const RootRoute = "/";

const OverViewPageRoute = "/overview";
const OverViewPageRouteName = "Overview";

const DriversPageRouteName = "Drivers";
const DriversPageRoute = "/drivers";

const ClientsPageRouteName = "Clients";
const ClientsPageRoute = "/clients";

const AuthenticationPageRouteName = "Logout";
const AuthenticationPageRoute = "/auth";

class MenuItem {
  final String name;
  final String route;

  MenuItem(this.name, this.route);
}

List<MenuItem> sideMenuItems = [
  MenuItem(OverViewPageRouteName, OverViewPageRoute),
  MenuItem(ClientsPageRouteName, ClientsPageRoute),
  MenuItem(DriversPageRouteName, DriversPageRoute),
  MenuItem(AuthenticationPageRouteName, AuthenticationPageRoute),
];
