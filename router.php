<?php
require_once 'app/controllers/player.controller.php';
require_once 'app/controllers/team.controller.php';
require_once 'app/controllers/login.controller.php';
require_once 'app/controllers/register.controller.php';
define('BASE_URL', '//' . $_SERVER['SERVER_NAME'] . ':' . $_SERVER['SERVER_PORT'] . dirname($_SERVER['PHP_SELF']) . '/');
$action = 'jugadores';
if (!empty($_GET['action'])) {
    $action = $_GET['action'];
}
$params = explode('/', $action);
switch ($params[0]) {
    case 'jugadores':
        $playerController = new PlayerController();
        $playerController->showPlayers();
        break;
    case 'add':
        $playerController = new PlayerController();
        $playerController->addPlayer();
        break;
    case 'delete':
        $playerController = new PlayerController();
        $id = $params[1];
        $playerController->deletePlayer($id);
        break;
    case 'editPlayer':
        $playerController = new PlayerController();
        $id = $params[1];
        $playerController->showPlayerToEdit($id);
        break;
    case 'edit':
        $playerController = new PlayerController();
        $id = $params[1];
        $playerController->editPlayer($id);
        break;
    case 'equipos':
        $teamController = new TeamController();
        $teamController->showTeams();
        break;
    case 'equipo':
        $teamController = new TeamController();
        $team = $params[1];
        $teamController->showOneTeam($team);
        break;
    case 'orderby':
        $playerController = new PlayerController();
        $filtro = $params[1];
        $playerController->orderBy($filtro);
        break;
    case 'addTeam':
        $teamController = new TeamController();
        $teamController->addTeam();
        break;
    case 'deleteTeam':
        $teamController = new TeamController();
        $id = $params[1];
        $teamController->deleteTeam($id);
        break;
    case 'formEditTeam':
        $teamController = new TeamController();
        $id = $params[1];
        $teamController->showFormEditTeam($id);
        break;
    case 'editTeam':
        $teamController = new TeamController();
        $id = $params[1];
        $teamController->editTeam($id);
        break;
    case 'login':
        $loginController = new LoginController();
        $loginController->showFormLogin();
        break;
    case 'logout':
        $loginController = new LoginController();
        $loginController->logout();
        break;
    case 'validate':
        $loginController = new LoginController();
        $loginController->validateUser();
        break;
    case 'register':
        $registerController = new RegisterController();
        $registerController->showFormRegister();
        break;
    case 'registerUser':
        $registerController = new RegisterController();
        $registerController->addNewUser();
        break;
    case 'config':
        $loginController = new LoginController();
        $loginController->showFormEditPw();
        break;
    case 'cambiarPassword':
        $loginController = new LoginController();
        $loginController->changePassword();
        break;
    case 'deleteUser':
        $loginController = new LoginController();
        $loginController->deleteUser();
        break;
    default:
        echo "404 not found";
        break;
}
