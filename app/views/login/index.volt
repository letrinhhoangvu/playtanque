<div id="content" class="zero" style="position:fixed; z-index:0;">
	<div id="loginBox" class="centerBox rounder light">
		<h1 class="app-title white">Playtanque</h1>
		<h3 class="tagline dark-gray">
			Vrai site de boules.
		</h3>
		<section class="grid pam" style="margin:0 auto; padding-bottom:0; width:80%;">
			<div class="grid-2">
				<div id="start" class="activate" style="border-right: 1px solid #ccc;">
					{{ link_to("play", '<i class="fa fa-bolt" style="margin-right: 10px;"></i> Version Hors Ligne', 'class': 'pure-button black b-yellow bold', 'style': 'margin-top:45px; padding-top:10px;') }}
					<button class="pure-button b-light-blue bold" onclick="$('#inscriptionForm').hide(); $('#connexionForm').show();">
						<i class="fa fa-plug" style="margin-right: 10px;"></i> Connexion
					</button>
					<button class="pure-button b-light-green bold" onclick="$('#connexionForm').hide(); $('#inscriptionForm').show();">
						<i class="fa fa-database" style="margin-right: 10px;"></i> Inscription
					</button>
				</div>
				<div>
					<div id="connexionForm" style="display:none;">
						<h2 class="white shadow" style="margin:0;">Connexion</h2>
						{{ form('login', 'method': 'post', 'class': 'form1') }}
						    {{ text_field("email",
						    	"size" : 30,
						    	"placeholder" : "E-Mail",
						    	"class" : "pas") }}
						    <br/>
						    {{ password_field("password",
							    "size" : 30,
							    "placeholder" : "Mot de passe",
						    	"class" : "pas") }}
						    <br/>
						    {{ submit_button('Se connecter',
						    	"class" : "pure-button b-red bold") }}
						{{ end_form() }}
						{{ link_to("oubli", "Mot de passe oublié ?", 'id': 'oubliMdp', 'class': 'shadow white') }}
					</div>
					<div id="inscriptionForm" style="display:none;">
						<h2 class="white shadow" style="margin:0;">Inscription</h2>
						{{ form('inscription', 'method': 'post', 'class': 'form1') }}
						    {{ text_field("username",
							    "size" : 30,
							    "placeholder" : "Nom d'utilisateur",
						    	"class" : "pas") }}
						    <br/>
						    {{ text_field("email",
						    	"size" : 30,
						    	"placeholder" : "E-Mail",
						    	"class" : "pas") }}
						    <br/>
						    {{ password_field("password",
							    "size" : 30,
							    "placeholder" : "Mot de passe",
						    	"class" : "pas") }}
						    <br/>
						    {{ submit_button("S'inscrire",
						    	"class" : "pure-button b-red bold") }}
						{{ end_form() }}
					</div>
				</div>
			</div>
		</section>
		<div class="notification mas">
			{{ flashSession.output() }}
		</div>
	</div>
</div>

