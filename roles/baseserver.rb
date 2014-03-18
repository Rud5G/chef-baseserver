name 'baseserver'
description 'Baseserver Role for servers'

# List of recipes and roles to apply.
run_list(
  'recipe[baseserver::baseserver]'
)

# Attributes applied if the node doesn't have it set already.
# default_attributes()

# Attributes applied no matter what the node has set already.
# override_attributes()
