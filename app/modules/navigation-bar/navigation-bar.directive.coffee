NavigationBarDirective = (currentUserService) ->
    link = (scope, el, attrs, ctrl) ->
        scope.vm = {}

        taiga.defineImmutableProperty(scope.vm, "projects", () -> currentUserService.projects.get("recents"))

    directive = {
        templateUrl: "navigation-bar/navigation-bar.html"
        scope: {}
        link: link
    }

    return directive

NavigationBarDirective.$inject = [
    "tgCurrentUserService"
]

angular.module("taigaNavigationBar").directive("tgNavigationBar", NavigationBarDirective)
