def proc_test
  my_proc = Proc.new { return "proc" }
  my_proc1 = Proc.new { return "proc1" }
  my_proc.call
  my_proc1.call
  "proc 1"
end

p proc_test

def lambda_test
  my_lambda = -> { return "lambda" }
  my_lambda1 = -> { return "lambda1" }
  my_lambda.call
  my_lambda1.call
  "lambda 1"
end

p lambda_test
