<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>{{title or 'Bottle App'}}</title>
    <style type="text/css">
      @import url(/static/css/global.css);
      %for stylesheet in addstyles:
      @import url(/static/css/{{stylesheet}}.css);
      %end
    </style>
    %if scripts:
      %for script in scripts:
        <script src="/static/js/{{script}}.js"></script>
    %end  
  </head>
  <body>
    <h1>Bottle app</h1>
    <nav>
      <a href='/'>Home</a>
    </nav>
    <div class='content'>
      %include
    </div>
  </body>
</html>
