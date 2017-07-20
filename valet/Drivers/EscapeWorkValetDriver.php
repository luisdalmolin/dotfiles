<?php

class EscapeWorkValetDriver extends ValetDriver
{
    private $site_folder = '';

    /**
     * Determine if the driver serves the request.
     *
     * @param  string  $sitePath
     * @param  string  $siteName
     * @param  string  $uri
     * @return bool
     */
    public function serves($sitePath, $siteName, $uri)
    {
        if (file_exists($sitePath.'/_config.php')) {
            return true;
        }

        return false;
    }
    
    /**
     * Determine if the incoming request is for a static file.
     *
     * @param  string  $sitePath
     * @param  string  $siteName
     * @param  string  $uri
     * @return string|false
     */
    public function isStaticFile($sitePath, $siteName, $uri)
    {
        if (file_exists($staticFilePath = $sitePath.$this->site_folder.$uri)) {
            return $staticFilePath;
        }

        return false;
    }

    /**
     * Get the fully resolved path to the application's front controller.
     *
     * @param  string  $sitePath
     * @param  string  $siteName
     * @param  string  $uri
     * @return string
     */
    public function frontControllerPath($sitePath, $siteName, $uri)
    {
        $path = $sitePath.$this->site_folder;

        if ($uri == '/_css/css/_css.php') {
            return $path.$uri;
        }

        if ($uri == '/') {
            return $path.'/index.php';
        }

        if ($uri == '/gerenciador') {
            return $path.'/gerenciador/index.php';
        }

        if (strpos($uri, '.php')) {
            $uris = explode('/', $uri);
            $file = array_pop($uris);
            
            $_SERVER['SCRIPT_FILENAME'] = implode('/', $uris) . '/' . $file;
        }

        return strpos($uri, 'gerenciador')
                    ? $path.$uri
                    : $path.'/index.php';
    }
}