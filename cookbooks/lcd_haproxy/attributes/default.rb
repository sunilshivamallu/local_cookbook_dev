default['haproxy']['members'] = [{
 'hostname' => 'webserver1',
 'ipaddress' => '10.1.0.3',
 'port' => 80,
 'ssl_port' => 443,
}, {
 'hostname' => 'webserver2',
 'ipaddress' => '10.1.0.4',
 'port' => 80,
 'ssl_port' => 443,
}]
