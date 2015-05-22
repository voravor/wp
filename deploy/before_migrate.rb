[release_path].each do |path|
    log "before_migrate hook [#{path}]" do
        level :debug
    end
    # run composer install
    execute "/usr/bin/php /usr/local/bin/composer install" do
        user "deploy"
        cwd path
        command "composer install --no-dev --no-interaction --optimize-autoloader"
        # only execute for composer projects
        only_if "test -f \"#{path}/composer.json\""
    end
    
    
    
    
    
end