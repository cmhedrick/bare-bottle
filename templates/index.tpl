<div id="tab">
  <p>Congrats on your successful first one :3</p>
  <p>How about you hover over this and I can explain som defaults you may want to have in rebase.</p>
</div>
<div id="panel">
  <code>
    \<%rebase('templates/base.tpl', title='New App', styles=['index'],
              scripts=['jquery-2.0.0.min', 'index.js']) %>
  <code>
  <dl>
    <dt>rebase:</dt>
      <dd>Is a function that is called at the end of a template in order to have it's content be displayed in the template thats specified in the first arg of the call<dd>
      <dd>You should at least be passing rebase a path to the template you wish to render</dd>
    <dt>*! The Following is for this instance of the project !*<dt>
    <dt>title:</dt>
      <dd>Is a varible assigned to a string that will be replacing the title located in the base.tpl</dd>
    <dt>styles:</dt>
      <dd>Is a list of styles that will be used specifically for this template. This list will be looped through in order to generate the links needed in the base.html. *The loop is in the base.html*</dd>
    <dt>scripts:</dt>
      <dd>Works much like styles just with js files.</dd>
  </dl>
<%rebase('templates/base.tpl', title='New App', addstyles=['index'],
         scripts=['jquery-2.0.0.min', 'index']) %>
