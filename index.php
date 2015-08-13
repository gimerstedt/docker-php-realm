<?
$url = 'http://www.realmofthemadgod.com/';
$html = file_get_contents($url);
$regex = '/AGCLoader([0-9]*)/';

preg_match($regex, $html, $matches);

header('Location: https://realmofthemadgodhrd.appspot.com/AssembleeGameClient'.$matches[1].'.swf');
