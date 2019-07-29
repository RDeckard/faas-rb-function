require 'json'

class Handler
  def run(json = default_request)
    req = JSON.parse(json)
    sum = 0
    req['iteration_nb'].times do
      sum += req['values'].sum
    end
    "Hello Ruby. The result is #{sum}"
  end

  def default_request
    '{"iteration_nb":1000,"values":[1,2,3]}'
  end
end
