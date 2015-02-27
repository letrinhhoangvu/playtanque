
<article id="content" class="main flex flex-h">
	<nav class="w100p">
		{{ link_to("concours", '<i class="fa fa-chevron-circle-left"></i> Retour', "class":"pure-button b-light-blue white mas") }}
	</nav>
	{{ form("concours/save", "method":"post", "style": "width:100%") }}

		{{ content() }}

		<div align="center">
		    <h1>Modifier le concours</h1>
		    {{ hidden_field("id") }}
		    <label for="label" class="bold mas">Label</label>
		    {{ text_field("label", "size" : 30) }}
		    <br/><br/>
		    <label for="date" class="bold mas">Date</label>
		    {{ date_field("date") }}
		    <br/><br/>
		    {{ submit_button("OK", "class": "pure-button b-light-green white mas bold") }}
		</div>

	{{ end_form() }}
</article>