name 'baseserver'
description 'Baseserver Role for servers'

# List of recipes and roles to apply. 
run_list(
  'role[base]',
  'recipe[baseserver::default]'
)

# Attributes applied if the node doesn't have it set already.
default_attributes()

# Attributes applied no matter what the node has set already.
override_attributes()

