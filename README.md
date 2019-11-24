1.Edit composer.json:
* remove "files": [ "vendor/symfony/symfony/src/Symfony/Component/VarDumper/Resources/functions/dump.php" ] 
* add "vendor-dir": "/app-vendor" to config "config": { "component-dir": "web/assets", "sort-packages": true, "vendor-dir": "/app-vendor" } 
2. add to service php new volume - /app-vendor 
3. change loader to $loader = require '/app-vendor/autoload.php'; in: 
* my_project_name/bin/console
* my_project_name/web/app.php
* my_project_name/web/app_dev.php
4.Edit AppKernel.php
* getCacheDir: where {$app} - your project name if (in_array($this->environment, array('dev', 'test'))) { return '/dev/shm/{$app}/cache/' . $this->environment; } return parent::getCacheDir();
*  
-getLogDir: where {$app} - your project name if (in_array($this->environment, array('dev', 'test'))) { return '/dev/shm/{$app}/logs'; }
    return parent::getLogDir();
5. If you habe a plroblem with permissions, change UID https://medium.com/faun/set-current-host-user-for-docker-container-4e521cef9ffc 
6. More options http://blog.michaelperrin.fr/2017/04/14/docker-for-mac-on-a-symfony-app/ 