# Name of the role should match the name of the file
name "webserver"

# Run list function we mentioned earlier
run_list(
    "recipe[apt]",
    "recipe[nodejs]",
    "recipe[build-essential]",
    "recipe[rvm::vagrant]",
    "recipe[rvm::system]",
    "recipe[git]",
    "recipe[postgresql::server]"
)

override_attributes(
    :postgresql => {
        :version  => "9.1",
        :listen_addresses => "*",
        :pg_hba => [
            "host all all 0.0.0.0/0 md5",
            "host all all ::1/0 md5",
        ],
        :users => [
            { :username => "postgres", :password => "password",
              :superuser => true, :login => true, :createdb => true }
        ],
    }
)