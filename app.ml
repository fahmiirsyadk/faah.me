let () =
  Dream.run ~interface:"0.0.0.0"
  @@ Dream.logger
  @@ Dream.router [
    Dream.get "/"
      (fun _ -> Dream.html "hello");

    Dream.get "/echo/:word"
      (fun request -> Dream.html (Dream.param request "word"));
  ]