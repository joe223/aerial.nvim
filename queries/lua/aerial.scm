(function_declaration
  name: [(identifier) (dot_index_expression) (method_index_expression)] @name) @type

(variable_declaration
  (assignment_statement
    (variable_list
      name: [(identifier) (dot_index_expression)] @name)
    (expression_list
      value: (function_definition) @type))) @start

(assignment_statement
  (variable_list
    name: [(identifier) (dot_index_expression)] @name)
  (expression_list
    value: (function_definition) @type)) @start

(field
  name: (identifier) @name
  value: (function_definition) @type) @start

(function_call
  name: (identifier) @method @name (#any-of? @method "describe" "it" "before_each" "after_each" "setup" "teardown")
  arguments: (arguments
    (string)? @name
    (function_definition) @type)
) @start

(function_definition) @type
