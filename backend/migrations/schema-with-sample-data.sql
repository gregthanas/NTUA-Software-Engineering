


<!DOCTYPE html>
<html lang="en-US" >

<head>

	
	<script>
window.ts_endpoint_url = "https:\/\/slack.com\/beacon\/timing";

(function(e) {
	var n=Date.now?Date.now():+new Date,r=e.performance||{},t=[],a={},i=function(e,n){for(var r=0,a=t.length,i=[];a>r;r++)t[r][e]==n&&i.push(t[r]);return i},o=function(e,n){for(var r,a=t.length;a--;)r=t[a],r.entryType!=e||void 0!==n&&r.name!=n||t.splice(a,1)};r.now||(r.now=r.webkitNow||r.mozNow||r.msNow||function(){return(Date.now?Date.now():+new Date)-n}),r.mark||(r.mark=r.webkitMark||function(e){var n={name:e,entryType:"mark",startTime:r.now(),duration:0};t.push(n),a[e]=n}),r.measure||(r.measure=r.webkitMeasure||function(e,n,r){n=a[n].startTime,r=a[r].startTime,t.push({name:e,entryType:"measure",startTime:n,duration:r-n})}),r.getEntriesByType||(r.getEntriesByType=r.webkitGetEntriesByType||function(e){return i("entryType",e)}),r.getEntriesByName||(r.getEntriesByName=r.webkitGetEntriesByName||function(e){return i("name",e)}),r.clearMarks||(r.clearMarks=r.webkitClearMarks||function(e){o("mark",e)}),r.clearMeasures||(r.clearMeasures=r.webkitClearMeasures||function(e){o("measure",e)}),e.performance=r,"function"==typeof define&&(define.amd||define.ajs)&&define("performance",[],function(){return r}) // eslint-disable-line
})(window);

</script>
<script>

(function() {
	
	window.TSMark = function(mark_label) {
		if (!window.performance || !window.performance.mark) return;
		performance.mark(mark_label);
	};
	window.TSMark('start_load');

	
	window.TSMeasureAndBeacon = function(measure_label, start_mark_label) {
		if (start_mark_label === 'start_nav' && window.performance && window.performance.timing) {
			window.TSBeacon(
				measure_label,
				new Date().getTime() - performance.timing.navigationStart
			);
			return;
		}
		if (!window.performance || !window.performance.mark || !window.performance.measure) return;
		performance.mark(start_mark_label + '_end');
		try {
			performance.measure(measure_label, start_mark_label, start_mark_label + '_end');
			window.TSBeacon(measure_label, performance.getEntriesByName(measure_label)[0].duration);
		} catch (e) {
			
		}
	};

	
	if ('sendBeacon' in navigator) {
		window.TSBeacon = function(label, value) {
			var endpoint_url = window.ts_endpoint_url || 'https://slack.com/beacon/timing';
			navigator.sendBeacon(
				endpoint_url + '?data=' + encodeURIComponent(label + ':' + value),
				''
			);
		};
	} else {
		window.TSBeacon = function(label, value) {
			var endpoint_url = window.ts_endpoint_url || 'https://slack.com/beacon/timing';
			new Image().src = endpoint_url + '?data=' + encodeURIComponent(label + ':' + value);
		};
	}
})();
</script>
 

<script>
window.TSMark('step_load');
</script>	
		<noscript><meta http-equiv="refresh" content="0; URL=/?redir=%2Ffiles-pri%2FTDVCQ5KLJ-FGP6UBX35%2Fnerdtech.sql&amp;nojsmode=1" /></noscript>


		
		<script type="text/javascript">
		if(self!==top)window.document.write("\u003Cstyle>body * {display:none !important;}\u003C\/style>\u003Ca href=\"#\" onclick="+
		"\"top.location.href=window.location.href\" style=\"display:block !important;padding:10px\">Go to Slack.com\u003C\/a>");
						
		(function() {
			var timer;
			if (self !== top) {
				timer = window.setInterval(function() {
					if (window.$) {
						try {
							$('#page').remove();
							$('#client-ui').remove();
							window.TS = null;
							window.clearInterval(timer);
						} catch(e) {}
					}
				}, 200);
			}
		}());
		
		</script>
	

		<script type="text/javascript" src="https://cfr.slack-edge.com/bv1-6/webpack.manifest.fe80ae8918db76b9402a.min.js" crossorigin="anonymous" onload="window._cdn ? _cdn.ok(this, arguments) : null" onerror="window._cdn ? _cdn.failed(this, arguments) : null"></script>


			
	
		<script>
			if (window.location.host == 'slack.com' && window.location.search.indexOf('story') < 0) {
				document.cookie = '__cvo_skip_doc=' + escape(document.URL) + '|' + escape(document.referrer) + ';path=/';
			}
		</script>
	

		<script type="text/javascript">
		
		try {
			if(window.location.hash && !window.location.hash.match(/^(#?[a-zA-Z0-9_]*)$/)) {
				window.location.hash = '';
			}
		} catch(e) {}
		
	</script>

	<script type="text/javascript">
				
			window.optimizely = [];
			window.dataLayer = [];
			window.ga = false;
		
	
				(function(e,c,b,f,d,g,a){e.SlackBeaconObject=d;
		e[d]=e[d]||function(){(e[d].q=e[d].q||[]).push([1*new Date(),arguments])};
		e[d].l=1*new Date();g=c.createElement(b);a=c.getElementsByTagName(b)[0];
		g.async=1;g.src=f;a.parentNode.insertBefore(g,a)
		})(window,document,"script","https://cfr.slack-edge.com/bv1-6/slack_beacon.86b388e46eb8135e1069.min.js","sb");
		sb('set', 'token', '3307f436963e02d4f9eb85ce5159744c');

				sb('track', 'pageview');

		
		function track(a) {
			if(window.ga) ga('send','event','web', a);
			if(window.sb) sb('track', a);
		}
		

	</script>

	

	<meta name="referrer" content="no-referrer">
		<meta name="superfish" content="nofish">

	<script type="text/javascript">


var TS_last_log_date = null;
var TSMakeLogDate = function() {
	var date = new Date();

	var y = date.getFullYear();
	var mo = date.getMonth()+1;
	var d = date.getDate();

	var time = {
	  h: date.getHours(),
	  mi: date.getMinutes(),
	  s: date.getSeconds(),
	  ms: date.getMilliseconds()
	};

	Object.keys(time).map(function(moment, index) {
		if (moment == 'ms') {
			if (time[moment] < 10) {
				time[moment] = time[moment]+'00';
			} else if (time[moment] < 100) {
				time[moment] = time[moment]+'0';
			}
		} else if (time[moment] < 10) {
			time[moment] = '0' + time[moment];
		}
	});

	var str = y + '/' + mo + '/' + d + ' ' + time.h + ':' + time.mi + ':' + time.s + '.' + time.ms;
	if (TS_last_log_date) {
		var diff = date-TS_last_log_date;
		//str+= ' ('+diff+'ms)';
	}
	TS_last_log_date = date;
	return str+' ';
}

</script>



<script type="text/javascript">

	var TSSSB = {
		call: function() {
			return false;
		}
	};

</script>

	<script type="text/javascript">
		
		window.addEventListener('load', function() {
			var was_TS = window.TS;
			delete window.TS;
			if (was_TS) window.TS = was_TS;
		});
	</script>
	        <title>Slack</title>
    <meta name="author" content="Slack">
        
    <meta name="robots" content="noindex,nofollow">

	
		
	
	
		
					
	
						
	
	
																
			
	
	
	
	
	
	
		<!-- output_css "sk_adapter" -->
    <link href="https://cfr.slack-edge.com/3e1a/style/rollup-slack_kit_legacy_adapters.css" rel="stylesheet" type="text/css" crossorigin="anonymous" onload="window._cdn ? _cdn.ok(this, arguments) : null" onerror="window._cdn ? _cdn.failed(this, arguments) : null">

			<!-- output_css "core" -->
    <link href="https://cfr.slack-edge.com/597fe4/style/rollup-plastic.css" rel="stylesheet" type="text/css" crossorigin="anonymous" onload="window._cdn ? _cdn.ok(this, arguments) : null" onerror="window._cdn ? _cdn.failed(this, arguments) : null">

		<!-- output_css "before_file_pages" -->

	<!-- output_css "file_pages" -->

	
			<!-- output_css "modern" -->
    <link href="https://cfr.slack-edge.com/bv1-6/modern.vendor.0e976f4.min.css" rel="stylesheet" type="text/css" crossorigin="anonymous" onload="window._cdn ? _cdn.ok(this, arguments) : null" onerror="window._cdn ? _cdn.failed(this, arguments) : null">
    <link href="https://cfr.slack-edge.com/bv1-6/application.28a8abf.min.css" rel="stylesheet" type="text/css" crossorigin="anonymous" onload="window._cdn ? _cdn.ok(this, arguments) : null" onerror="window._cdn ? _cdn.failed(this, arguments) : null">

	<!-- output_css "slack_kit_helpers" -->
    <link href="https://cfr.slack-edge.com/4c516/style/rollup-slack_kit_helpers.css" rel="stylesheet" type="text/css" id="slack_kit_helpers_stylesheet"  crossorigin="anonymous" onload="window._cdn ? _cdn.ok(this, arguments) : null" onerror="window._cdn ? _cdn.failed(this, arguments) : null">

	<!-- output_css "regular" -->
    <link href="https://cfr.slack-edge.com/96b63/style/signin.css" rel="stylesheet" type="text/css" crossorigin="anonymous" onload="window._cdn ? _cdn.ok(this, arguments) : null" onerror="window._cdn ? _cdn.failed(this, arguments) : null">
    <link href="https://cfr.slack-edge.com/8e1b8/style/index.css" rel="stylesheet" type="text/css" crossorigin="anonymous" onload="window._cdn ? _cdn.ok(this, arguments) : null" onerror="window._cdn ? _cdn.failed(this, arguments) : null">
    <link href="https://cfr.slack-edge.com/cbc02/style/libs/lato-2-compressed.css" rel="stylesheet" type="text/css" crossorigin="anonymous" onload="window._cdn ? _cdn.ok(this, arguments) : null" onerror="window._cdn ? _cdn.failed(this, arguments) : null">
    <link href="https://cfr.slack-edge.com/a96da/style/sticky_nav.css" rel="stylesheet" type="text/css" crossorigin="anonymous" onload="window._cdn ? _cdn.ok(this, arguments) : null" onerror="window._cdn ? _cdn.failed(this, arguments) : null">
    <link href="https://cfr.slack-edge.com/e39c/style/footer.css" rel="stylesheet" type="text/css" crossorigin="anonymous" onload="window._cdn ? _cdn.ok(this, arguments) : null" onerror="window._cdn ? _cdn.failed(this, arguments) : null">

	

	
	
		<meta name="robots" content="noindex, nofollow" />
	

	<link id="favicon" rel="shortcut icon" href="https://cfr.slack-edge.com/cebaa/img/icons/favicon-32.png" sizes="16x16 32x32 48x48" type="image/png" />
	
		
</head>

<body class="	index			deprecated">

		  			<script>
		
			var w = Math.max(document.documentElement.clientWidth, window.innerWidth || 0);
			if (w > 1440) document.querySelector('body').classList.add('widescreen');
		
		</script>
	
  	
	
	

	
					

	



	<nav class="top persistent">
	
		
		<a href="https://slack.com/" class="logo" data-qa="logo" data-clog-event="WEBSITE_CLICK" data-clog-params="click_target=logo" aria-label="Slack homepage"></a>
	
		
							
					<ul>
				<li><a  href="https://slack.com/is" data-qa="product" data-clog-event="WEBSITE_CLICK" data-clog-params="click_target=nav_product">Product</a></li>
				<li><a  href="https://slack.com/pricing?ui_step=55&ui_element=5" data-qa="pricing" data-clog-event="WEBSITE_CLICK" data-clog-params="click_target=nav_pricing">Pricing</a></li>				<li><a  href="https://get.slack.help/hc/en-us" data-qa="support" data-clog-event="WEBSITE_CLICK" data-clog-params="click_target=nav_support">Support</a></li>

								<li class= "mobile_btn download_slack"><a  href="/get" data-qa="download_slack" data-clog-event="WEBSITE_CLICK" data-clog-params="click_target=nav_download">Download Slack</a></li>									<li><a data-gtm-click="SignUp,optout_nav_create_team" href="https://slack.com/create" class="" data-qa="create_team" data-clog-event="WEBSITE_CLICK" data-clog-params="click_target=nav_create_team">Create a new workspace</a></li>
					<li><a  href="https://slack.com/get-started" data-gtm-click="optout_nav_find_team" data-qa="find_team" data-clog-event="WEBSITE_CLICK" data-clog-params="click_target=nav_find_team">Find your workspace</a></li>

					<li class="sign_in hide_on_mobile"><a data-gtm-click="optout_nav_signin" href="https://slack.com/signin" class="btn_sticky btn_filled" data-qa="sign_in" data-clog-event="WEBSITE_CLICK" data-clog-params="click_target=nav_sign_in">Sign in</a></li>
								<li class="mobile_btn mobile_menu_btn">
					<a href="#" class="btn_sticky" data-clog-event="WEBSITE_CLICK" data-clog-params="click_target=nav_mobile_menu_btn">Menu</a>
				</li>
			</ul>

			
			</nav>



<nav class="mobile_menu loading menu_scroll" aria-hidden="true">
	<div class="mobile_menu_wrapper">
	<div class="mobile_menu_header">
			<a href="https://slack.com/" class="logo" data-clog-event="WEBSITE_CLICK" data-clog-params="click_target=nav_logo"></a>
			<a href="#" class="close" aria-label="close" data-clog-event="WEBSITE_CLICK" data-clog-params="click_target=nav_menu_close"><ts-icon class="ts_icon ts_icon_times"></ts-icon></a>
	</div>
					<ul>
				<li><a  href="https://slack.com/is" data-clog-event="WEBSITE_CLICK" data-clog-params="click_target=nav_product">Product</a></li>
				<li><a  href="https://slack.com/pricing?ui_step=55&ui_element=5" class="mobile_nav_pricing" data-clog-event="WEBSITE_CLICK" data-clog-params="click_target=nav_pricing">Pricing</a></li>				<li><a  href="https://get.slack.help/hc/en-us" data-clog-event="WEBSITE_CLICK" data-clog-params="click_target=nav_support">Support</a></li>
				<li><a  href="/get" data-clog-event="WEBSITE_CLICK" data-clog-params="click_target=nav_download">Download <span class="optional_desktop_nav_message">the Slack app</span></a></li>
			</ul>

			<ul class="mobile_menu_footer">
				
				<li><a href="https://slack.com/signin" data-gtm-click="optout_nav_signin" target="_blank" data-clog-event="WEBSITE_CLICK" data-clog-params="click_target=nav_sign_in"><ts-icon class="ts_icon small float_none team_icon ts_icon_plus default signup_icon"></ts-icon> <span class="switcher_label">Sign in</span></a></li>

				<li><a data-gtm-click="SignUp,optout_nav_create_team" href="https://slack.com/create" class="" target="_blank" data-clog-event="WEBSITE_CLICK" data-clog-params="click_target=nav_create_team"><ts-icon class="ts_icon small float_none team_icon c-icon--slack default signup_icon"></ts-icon> <span class="switcher_label">Create a new workspace</span></a></li>			</ul>
			</div>
</nav>

	
	<div id="page" >

		<div id="page_contents" data-qa="page_contents" class="">

<div class="span_4_of_6 col float_none margin_auto no_right_padding">
	
		<p class="alert alert_info"><i class="ts_icon ts_icon_info_circle"></i> You need to sign in to see this page.</p>

	
<p id="error_ratelimit" class="alert alert_warning" style="display: none;">
	<i class="ts_icon ts_icon_warning"></i>
	
	<strong>Too many login failures!</strong><br class="hide_on_mobile" />
	Apologies! There were too many SMS message requests in a short period, so you’ll have to wait a moment to try again.
	</p>
<p id="error_unknown" class="alert alert_error" style="display: none;">
	<i class="ts_icon ts_icon_warning"></i> Hmmm... something went wrong. Please try again.</p></div>

	
<div class="real_content card align_center span_4_of_6 col float_none margin_auto large_bottom_margin right_padding large_bottom_padding">
	<h1 id="signin_header" class="tiny_bottom_margin"> 
	Sign in to <span class="break_word">NerdCulTech</span>
	</h1>

	<p class="medium_bottom_margin">nerdcultech.slack.com</p>

	
	<div class="col span_4_of_6 float_none margin_auto signin_card">
		<form id="signin_form" action="/" method="post" accept-encoding="UTF-8">
			<input type="hidden" name="signin" value="1">
			<input type="hidden" name="redir" value="/files-pri/TDVCQ5KLJ-FGP6UBX35/nerdtech.sql">
			<input type="hidden" name="has_remember" value="1">
						<input type="hidden" name="crumb" value="s-1551796074-13d6afc6fd1915ae683aacf9512d730d51828b000741734efacbdad25c937e9f-☃" />

			
			<p class="browser_password align_left">Enter your <strong>email address</strong> and <strong>password</strong>.</p>
			<p class="ssb_password hidden">What is your <strong>password</strong>?</p>

			<p class=" no_bottom_margin">
				<input type="email" id="email" name="email" size="40" value="" placeholder="you@example.com">
			</p>

			<p class=" small_bottom_margin">
				<input type="password" id="password" name="password" size="40" placeholder="password" >
			</p>

			
						

			<p><button id="signin_btn" type="submit" class="btn btn_large full_width ladda-button" data-style="expand-right"><span class="ladda-label">Sign in</span></button></p>

			<div class="align_left">
				<label class="checkbox normal inline_block small_right_margin"><input type="checkbox" name="remember" checked> Remember me</label>
			</div>

			<div class="align_left small_top_margin">
				<a id="forgot-pw" href="/forgot">Forgot password?</a>
									· <a href="https://slack.com/get-started">Forgot which email you used?</a>
							</div>

		</form>
		<div id="magic_login_cta" class="float_none margin_auto hidden">

   		<div class="or no_wrap small_top_padding medium_bottom_margin align_center">or</div>

			 <p class="large_bottom_margin"><strong>Long password? Hard to type?</strong><br /> We can email you a magic link so you can sign in without having to type your password.</p>

			<form id="magic_login" action="/" method="post" accept-encoding="UTF-8" class="align_center float_none margin_auto medium_bottom_margin">
				<input type="hidden" name="crumb" value="s-1551796074-13d6afc6fd1915ae683aacf9512d730d51828b000741734efacbdad25c937e9f-☃" />
				<input type="hidden" name="email">
				<input type="hidden" name="signin_request_magiclogin" value="1">
				<button class="btn btn_large btn_outline full_width"><ts-icon class="ts_icon_magic"></ts-icon>Email Me A Link</button>
			</form>

		</div>


	</div>

	<p class="small clear_both taller_line_height">
			</p>
</div>
	
<div class="real_content align_center">
			<p>
			<span class="bold">Don't have an account on this workspace yet?</span>
			<span class="clear_both block">Contact the workspace administrator for an invitation</span>
		</p>
	
	
			<p>
			Trying to create a workspace?			
	
	<a data-gtm-click="SignUp" data-clog-event="WEBSITE_CLICK" data-clog-params="click_target=inc_download_app_or_sign_in_cta_sign_up_link" href="/create" class="bold">Create a new workspace</a>
			</p>
	</div>


					
	</div>
	<div id="overlay"></div>
</div>


	


<footer  data-qa="footer">
	<section class="links">
		<div class="grid">
			<div class="col span_1_of_4 nav_col">
				<ul>
					<li class="cat_1">Using Slack</li>
					<li><a href="/is" data-qa="product_footer" data-clog-event="WEBSITE_CLICK" data-clog-params="click_target=footer_product">Product</a></li>
					<li><a href="/enterprise" data-qa="enterprise_footer" data-clog-event="WEBSITE_CLICK" data-clog-params="click_target=footer_enterprise">Enterprise</a></li>
					<li><a href="/pricing?ui_step=28&ui_element=5" data-qa="pricing_footer" data-clog-event="WEBSITE_CLICK" data-clog-params="click_target=footer_pricing">Pricing</a></li>
					<li><a href="https://get.slack.help/hc/en-us" data-qa="support_footer" data-clog-event="WEBSITE_CLICK" data-clog-params="click_target=footer_support">Support</a></li>
					<li><a href="/guides" data-qa="getting_started" data-clog-event="WEBSITE_CLICK" data-clog-params="click_target=footer_getting_started">Slack Guides</a></li>
					<li><a href="/apps" data-qa="app_directory" data-clog-event="WEBSITE_CLICK" data-clog-params="click_target=footer_app_directory">App Directory</a></li>
					<li><a href="https://api.slack.com/" data-qa="api" data-clog-event="WEBSITE_CLICK" data-clog-params="click_target=footer_api">API</a></li>
				</ul>
			</div>
			<div class="col span_1_of_4 nav_col">
				<ul>
					<li class="cat_2">Slack <ts-icon class="ts_icon_heart"></ts-icon></li>
					<li><a href="/jobs" data-qa="jobs" data-clog-event="WEBSITE_CLICK" data-clog-params="click_target=footer_jobs">Jobs</a></li>
					<li><a href="/customers" data-qa="customers" data-clog-event="WEBSITE_CLICK" data-clog-params="click_target=footer_customers">Customers</a></li>
					<li><a href="/developers" data-qa="developers" data-clog-event="WEBSITE_CLICK" data-clog-params="click_target=footer_developers">Developers</a></li>
					<li><a href="/events" data-qa="events" data-clog-event="WEBSITE_CLICK" data-clog-params="click_target=footer_events">Events</a></li>
					<li><a href="https://slackhq.com/" data-qa="blog_footer" data-clog-event="WEBSITE_CLICK" data-clog-params="click_target=footer_blog">Blog</a></li>
					<li><a href="https://slack.shop/" data-qa="slack_shop" data-clog-event="WEBSITE_CLICK" data-clog-params="click_target=footer_slack_shop">Slack Shop</a></li>
				</ul>
			</div>
			<div class="col span_1_of_4 nav_col">
				<ul>
					<li class="cat_3">Legal</li>
					<li><a href="/privacy-policy" data-qa="privacy" data-clog-event="WEBSITE_CLICK" data-clog-params="click_target=footer_privacy">Privacy</a></li>
					<li><a href="/security" data-qa="security" data-clog-event="WEBSITE_CLICK" data-clog-params="click_target=footer_security">Security</a></li>
					<li><a href="/terms-of-service" data-qa="tos" data-clog-event="WEBSITE_CLICK" data-clog-params="click_target=footer_tos">Terms of Service</a></li>
					<li><a href="/policies" data-qa="policies" data-clog-event="WEBSITE_CLICK" data-clog-params="click_target=footer_policies">Policies</a></li>
				</ul>
			</div>
			<div class="col span_1_of_4 nav_col">
				<ul>
					<li class="cat_4">Handy Links</li>
					<li><a href="/downloads" data-qa="downloads" data-clog-event="WEBSITE_CLICK" data-clog-params="click_target=footer_downloads">Download desktop app</a></li>
					<li><a href="/downloads" data-qa="downloads_mobile" data-clog-event="WEBSITE_CLICK" data-clog-params="click_target=footer_downloads_mobile">Download mobile app</a></li>
					<li><a href="/brand-guidelines" data-qa="brand_guidelines" data-clog-event="WEBSITE_CLICK" data-clog-params="click_target=footer_brand_guidelines">Brand Guidelines</a></li>
					<li><a href="https://slackatwork.com" data-qa="slack_at_work" data-clog-event="WEBSITE_CLICK" data-clog-params="click_target=footer_slack_at_work">Slack at Work</a></li>
					<li><a href="https://status.slack.com/" data-qa="status" data-clog-event="WEBSITE_CLICK" data-clog-params="click_target=footer_status">Status</a></li>
				</ul>
			</div>
		</div>
	</section>

	<div class="footnote">
		<section>
			<a href="https://slack.com" aria-label="Slack homepage" data-clog-event="WEBSITE_CLICK" data-clog-params="click_target=footer_slack_icon"><ts-icon class="c-icon--slack" aria-hidden="true"></ts-icon></a>
			<ul>
				<li>
					<a href="/help/contact" data-qa="contact_us" data-clog-event="WEBSITE_CLICK" data-clog-params="click_target=footer_contact_us">Contact Us</a>
				</li>
				<li>
					<a href="https://twitter.com/SlackHQ" data-qa="slack_twitter" data-clog-event="WEBSITE_CLICK" data-clog-params="click_target=footer_slack_twitter" aria-label="Slack on Twitter"><ts-icon class="ts_icon_twitter" aria-hidden="true"></ts-icon></a>
				</li>
				<li class="yt">
					<a href="https://www.youtube.com/channel/UCY3YECgeBcLCzIrFLP4gblw" data-qa="slack_youtube" data-clog-event="WEBSITE_CLICK" data-clog-params="click_target=footer_slack_youtube" aria-label="Slack on YouTube"><ts-icon class="ts_icon_youtube" aria-hidden="true"></ts-icon></a>
				</li>
			</ul>
		</section>
	</div>
</footer>





<script type="text/javascript">

	/**
	 * A placeholder function that the build script uses to
	 * replace file paths with their CDN versions.
	 *
	 * @param {String} file_path - File path
	 * @returns {String}
	 */
	function vvv(file_path) {

		var vvv_warning = 'You cannot use vvv on dynamic values. Please make sure you only pass in static file paths.';
		if (TS && TS.warn) {
			TS.warn(vvv_warning);
		} else {
			console.warn(vvv_warning);
		}

		return file_path;
	}

	var cdn_url = "https:\/\/cfr.slack-edge.com";
	var vvv_abs_url = "https:\/\/slack.com\/";
	var inc_js_setup_data = {
		emoji_sheets: {
			apple: 'https://cfr.slack-edge.com/c00d19/img/emoji_2017_12_06/sheet_apple_64_indexed_256.png',
			google: 'https://cfr.slack-edge.com/c00d19/img/emoji_2017_12_06/sheet_google_64_indexed_256.png',
		},
	};
</script>
	<script type="text/javascript">
	// common boot_data
	var boot_data = {
		start_ms: Date.now(),
		app: "web",
		user_id: '',
		team_id: 'T00000000',
		visitor_uid: "6dx2juykg4in13lqsu0h1kd38",
		no_login: true,
		version_ts: "1551785479",
		version_uid: "a83c40842465cf4ceb17818e7798c1c4d489f319",
		cache_version: "v17-ostrich",
		cache_ts_version: "v2-bunny",
		redir_domain: "slack-redir.net",
		signin_url: 'https://slack.com/signin',
		abs_root_url: "https:\/\/slack.com\/",
		api_url: '/api/',
		team_url: "",
		image_proxy_url: "https:\/\/slack-imgs.com\/",
		beacon_timing_url: "https:\/\/slack.com\/beacon\/timing",
		beacon_error_url: "https:\/\/slack.com\/beacon\/error",
		clog_url: "clog\/track\/",
		api_token: "",
		hc_tracking_qs: "",

		vvv_paths: {
			
		lz_string: "https:\/\/cfr.slack-edge.com\/bv1-6\/lz-string-1.4.4.worker.8de1b00d670ff3dc706a0.js",
		codemirror: "https:\/\/cfr.slack-edge.com\/bv1-6\/codemirror.min.b0cb89ec57f7e9cc47c3.min.js",
	codemirror_addon_simple: "https:\/\/cfr.slack-edge.com\/bv1-6\/codemirror_simple.2c7a16812f40e05135fc.min.js",
	codemirror_load: "https:\/\/cfr.slack-edge.com\/bv1-6\/codemirror_load.b5b0842cb60bc2f60271.min.js",

	// Silly long list of every possible file that Codemirror might load
	codemirror_files: {
		'apl': "https:\/\/cfr.slack-edge.com\/bv1-6\/codemirror_lang_apl.663760305bff75f3d938.min.js",
		'asciiarmor': "https:\/\/cfr.slack-edge.com\/bv1-6\/codemirror_lang_asciiarmor.b2129160f7f8d2684d9f.min.js",
		'asn.1': "https:\/\/cfr.slack-edge.com\/bv1-6\/codemirror_lang_asn.1.956821513398b13d8eda.min.js",
		'asterisk': "https:\/\/cfr.slack-edge.com\/bv1-6\/codemirror_lang_asterisk.7456a599f30bce636a2f.min.js",
		'brainfuck': "https:\/\/cfr.slack-edge.com\/bv1-6\/codemirror_lang_brainfuck.2b68f0826426a1f3ee87.min.js",
		'clike': "https:\/\/cfr.slack-edge.com\/bv1-6\/codemirror_lang_clike.5350b58a702e2f22431d.min.js",
		'clojure': "https:\/\/cfr.slack-edge.com\/bv1-6\/codemirror_lang_clojure.bed9f56b40fa79c4e899.min.js",
		'cmake': "https:\/\/cfr.slack-edge.com\/bv1-6\/codemirror_lang_cmake.ca9e03ab7a93942242a7.min.js",
		'cobol': "https:\/\/cfr.slack-edge.com\/bv1-6\/codemirror_lang_cobol.646162dc3b2c9cfa0669.min.js",
		'coffeescript': "https:\/\/cfr.slack-edge.com\/bv1-6\/codemirror_lang_coffeescript.0883459acc792dee260a.min.js",
		'commonlisp': "https:\/\/cfr.slack-edge.com\/bv1-6\/codemirror_lang_commonlisp.7666d678d1c985d3b44f.min.js",
		'css': "https:\/\/cfr.slack-edge.com\/bv1-6\/codemirror_lang_css.9d97ec06ef7ccadb17b8.min.js",
		'crystal': "https:\/\/cfr.slack-edge.com\/bv1-6\/codemirror_lang_crystal.8038e0c315a15e3f3199.min.js",
		'cypher': "https:\/\/cfr.slack-edge.com\/bv1-6\/codemirror_lang_cypher.601e112c7e66d1c4fab0.min.js",
		'd': "https:\/\/cfr.slack-edge.com\/bv1-6\/codemirror_lang_d.8d8dcaa5dc397efaf8a8.min.js",
		'dart': "https:\/\/cfr.slack-edge.com\/bv1-6\/codemirror_lang_dart.af6a3bacfb42bec45182.min.js",
		'diff': "https:\/\/cfr.slack-edge.com\/bv1-6\/codemirror_lang_diff.c7fc0286ba4d3bcd95b3.min.js",
		'django': "https:\/\/cfr.slack-edge.com\/bv1-6\/codemirror_lang_django.2c89f0afa2c10ee8a73f.min.js",
		'dockerfile': "https:\/\/cfr.slack-edge.com\/bv1-6\/codemirror_lang_dockerfile.ca0580b9da8a7b3b1532.min.js",
		'dtd': "https:\/\/cfr.slack-edge.com\/bv1-6\/codemirror_lang_dtd.3bb371dd4cedc7c5195b.min.js",
		'dylan': "https:\/\/cfr.slack-edge.com\/bv1-6\/codemirror_lang_dylan.3c1418f3f2f2ce939d2a.min.js",
		'ebnf': "https:\/\/cfr.slack-edge.com\/bv1-6\/codemirror_lang_ebnf.7200c60ce52c1878f2a0.min.js",
		'ecl': "https:\/\/cfr.slack-edge.com\/bv1-6\/codemirror_lang_ecl.d56716a3811118b7ba8c.min.js",
		'eiffel': "https:\/\/cfr.slack-edge.com\/bv1-6\/codemirror_lang_eiffel.e0943a9740c3752d6f22.min.js",
		'elm': "https:\/\/cfr.slack-edge.com\/bv1-6\/codemirror_lang_elm.ce53d0c50115ab6f46bc.min.js",
		'erlang': "https:\/\/cfr.slack-edge.com\/bv1-6\/codemirror_lang_erlang.6159b6201df7d52df4a7.min.js",
		'factor': "https:\/\/cfr.slack-edge.com\/bv1-6\/codemirror_lang_factor.45fa062dd01514c79f1c.min.js",
		'forth': "https:\/\/cfr.slack-edge.com\/bv1-6\/codemirror_lang_forth.78b639cadcae57a684a3.min.js",
		'fortran': "https:\/\/cfr.slack-edge.com\/bv1-6\/codemirror_lang_fortran.37c971edd4c076f24dde.min.js",
		'gas': "https:\/\/cfr.slack-edge.com\/bv1-6\/codemirror_lang_gas.c95f3983f625f4993b30.min.js",
		'gfm': "https:\/\/cfr.slack-edge.com\/bv1-6\/codemirror_lang_gfm.03bb4b46f32e50bb8d89.min.js",
		'gherkin': "https:\/\/cfr.slack-edge.com\/bv1-6\/codemirror_lang_gherkin.9a0ee71d64db19f24904.min.js",
		'go': "https:\/\/cfr.slack-edge.com\/bv1-6\/codemirror_lang_go.f74aa517dc286eec2566.min.js",
		'groovy': "https:\/\/cfr.slack-edge.com\/bv1-6\/codemirror_lang_groovy.f5952f6dabfbda0ac28b.min.js",
		'haml': "https:\/\/cfr.slack-edge.com\/bv1-6\/codemirror_lang_haml.4fbfa8600af21c4df647.min.js",
		'handlebars': "https:\/\/cfr.slack-edge.com\/bv1-6\/codemirror_lang_handlebars.6c378a8ebbdb20a42347.min.js",
		'haskell': "https:\/\/cfr.slack-edge.com\/bv1-6\/codemirror_lang_haskell.cb1fe6b91f05c2451018.min.js",
		'haxe': "https:\/\/cfr.slack-edge.com\/bv1-6\/codemirror_lang_haxe.c373a9e52d52879b5ee7.min.js",
		'htmlembedded': "https:\/\/cfr.slack-edge.com\/bv1-6\/codemirror_lang_htmlembedded.20c92c9750c4e9ea8d2d.min.js",
		'htmlmixed': "https:\/\/cfr.slack-edge.com\/bv1-6\/codemirror_lang_htmlmixed.95475b5e734bdc83f03d.min.js",
		'http': "https:\/\/cfr.slack-edge.com\/bv1-6\/codemirror_lang_http.6b4c9c9ef67babe408db.min.js",
		'idl': "https:\/\/cfr.slack-edge.com\/bv1-6\/codemirror_lang_idl.0454c39675e9fab26793.min.js",
		'jade': "https:\/\/cfr.slack-edge.com\/bv1-6\/codemirror_lang_jade.1a15c0dda10ab6a32ba8.min.js",
		'javascript': "https:\/\/cfr.slack-edge.com\/bv1-6\/codemirror_lang_javascript.edaafe38560a8929f52d.min.js",
		'jinja2': "https:\/\/cfr.slack-edge.com\/bv1-6\/codemirror_lang_jinja2.3db65497213351276a85.min.js",
		'julia': "https:\/\/cfr.slack-edge.com\/bv1-6\/codemirror_lang_julia.142b119d0b9c0a9521c1.min.js",
		'livescript': "https:\/\/cfr.slack-edge.com\/bv1-6\/codemirror_lang_livescript.b4bfd13c4f3d258a2c8a.min.js",
		'lua': "https:\/\/cfr.slack-edge.com\/bv1-6\/codemirror_lang_lua.f4c4d1f605021e92bf47.min.js",
		'markdown': "https:\/\/cfr.slack-edge.com\/bv1-6\/codemirror_lang_markdown.770647eed9aac2d8eec6.min.js",
		'mathematica': "https:\/\/cfr.slack-edge.com\/bv1-6\/codemirror_lang_mathematica.eb6921c6675fd66c0389.min.js",
		'mirc': "https:\/\/cfr.slack-edge.com\/bv1-6\/codemirror_lang_mirc.e71a0101712b6eeb5562.min.js",
		'mllike': "https:\/\/cfr.slack-edge.com\/bv1-6\/codemirror_lang_mllike.23dc048ba68d379db0b5.min.js",
		'modelica': "https:\/\/cfr.slack-edge.com\/bv1-6\/codemirror_lang_modelica.6e37d289718407d9dbc8.min.js",
		'mscgen': "https:\/\/cfr.slack-edge.com\/bv1-6\/codemirror_lang_mscgen.c3fe74b5d201d0bb808c.min.js",
		'mumps': "https:\/\/cfr.slack-edge.com\/bv1-6\/codemirror_lang_mumps.1f5d48f79e2df097e94b.min.js",
		'nginx': "https:\/\/cfr.slack-edge.com\/bv1-6\/codemirror_lang_nginx.8f51223dc29e6add1025.min.js",
		'nsis': "https:\/\/cfr.slack-edge.com\/bv1-6\/codemirror_lang_nsis.27325a32de34bde70ef6.min.js",
		'ntriples': "https:\/\/cfr.slack-edge.com\/bv1-6\/codemirror_lang_ntriples.71822f9439e6472cfaba.min.js",
		'octave': "https:\/\/cfr.slack-edge.com\/bv1-6\/codemirror_lang_octave.0c4fd02362947d251691.min.js",
		'oz': "https:\/\/cfr.slack-edge.com\/bv1-6\/codemirror_lang_oz.679457ccd03f632cdfd1.min.js",
		'pascal': "https:\/\/cfr.slack-edge.com\/bv1-6\/codemirror_lang_pascal.b9764cce2c046b32a756.min.js",
		'pegjs': "https:\/\/cfr.slack-edge.com\/bv1-6\/codemirror_lang_pegjs.d98397d39debc9b58ac1.min.js",
		'perl': "https:\/\/cfr.slack-edge.com\/bv1-6\/codemirror_lang_perl.e0b72f4f6a4c8281ea42.min.js",
		'php': "https:\/\/cfr.slack-edge.com\/bv1-6\/codemirror_lang_php.c122ccccad0eb4cb1f8f.min.js",
		'pig': "https:\/\/cfr.slack-edge.com\/bv1-6\/codemirror_lang_pig.7a8a75d0e872b1eff25e.min.js",
		'powershell': "https:\/\/cfr.slack-edge.com\/bv1-6\/codemirror_lang_powershell.f94db45880aca59c1216.min.js",
		'properties': "https:\/\/cfr.slack-edge.com\/bv1-6\/codemirror_lang_properties.ecd1c648ab0b28b797ab.min.js",
		'puppet': "https:\/\/cfr.slack-edge.com\/bv1-6\/codemirror_lang_puppet.6ccb1951e967f67ed6b2.min.js",
		'python': "https:\/\/cfr.slack-edge.com\/bv1-6\/codemirror_lang_python.e09ad3cce600393bdcdd.min.js",
		'q': "https:\/\/cfr.slack-edge.com\/bv1-6\/codemirror_lang_q.bea56eef48bbd6094e88.min.js",
		'r': "https:\/\/cfr.slack-edge.com\/bv1-6\/codemirror_lang_r.53035d6119ad1c3d7494.min.js",
		'rpm': "https:\/\/cfr.slack-edge.com\/bv1-6\/codemirror_lang_rpm.a0f500f2ce24097e90d0.min.js",
		'rst': "https:\/\/cfr.slack-edge.com\/bv1-6\/codemirror_lang_rst.165170fc553494fdf77a.min.js",
		'ruby': "https:\/\/cfr.slack-edge.com\/bv1-6\/codemirror_lang_ruby.924d2a2c55302db7cef1.min.js",
		'rust': "https:\/\/cfr.slack-edge.com\/bv1-6\/codemirror_lang_rust.b119288a11a7dc391897.min.js",
		'sass': "https:\/\/cfr.slack-edge.com\/bv1-6\/codemirror_lang_sass.00589ac0113fd7a339c4.min.js",
		'scheme': "https:\/\/cfr.slack-edge.com\/bv1-6\/codemirror_lang_scheme.86b09b626eaf76f10335.min.js",
		'shell': "https:\/\/cfr.slack-edge.com\/bv1-6\/codemirror_lang_shell.de8ee159a42949f58fbf.min.js",
		'sieve': "https:\/\/cfr.slack-edge.com\/bv1-6\/codemirror_lang_sieve.55fe095a4fcc1d4f7b67.min.js",
		'slim': "https:\/\/cfr.slack-edge.com\/bv1-6\/codemirror_lang_slim.63ca1039dce774ec1eae.min.js",
		'smalltalk': "https:\/\/cfr.slack-edge.com\/bv1-6\/codemirror_lang_smalltalk.96c2693e75408ae1410a.min.js",
		'smarty': "https:\/\/cfr.slack-edge.com\/bv1-6\/codemirror_lang_smarty.f1c92ef06a203cd8a224.min.js",
		'solr': "https:\/\/cfr.slack-edge.com\/bv1-6\/codemirror_lang_solr.3f9914e5a54d19e295e5.min.js",
		'soy': "https:\/\/cfr.slack-edge.com\/bv1-6\/codemirror_lang_soy.1a17467b95182d4510d9.min.js",
		'sparql': "https:\/\/cfr.slack-edge.com\/bv1-6\/codemirror_lang_sparql.91f57b063ef376513647.min.js",
		'spreadsheet': "https:\/\/cfr.slack-edge.com\/bv1-6\/codemirror_lang_spreadsheet.e72d0a04a1bd357efa6c.min.js",
		'sql': "https:\/\/cfr.slack-edge.com\/bv1-6\/codemirror_lang_sql.dbb2a33d6c06c3cf72ad.min.js",
		'stex': "https:\/\/cfr.slack-edge.com\/bv1-6\/codemirror_lang_stex.cafad3afd1d37a97db8d.min.js",
		'stylus': "https:\/\/cfr.slack-edge.com\/bv1-6\/codemirror_lang_stylus.197c5de6253590a03c1d.min.js",
		'swift': "https:\/\/cfr.slack-edge.com\/bv1-6\/codemirror_lang_swift.f56bd4cc06d0b92666b5.min.js",
		'tcl': "https:\/\/cfr.slack-edge.com\/bv1-6\/codemirror_lang_tcl.48f88db4e94afd9ff2cf.min.js",
		'textile': "https:\/\/cfr.slack-edge.com\/bv1-6\/codemirror_lang_textile.3e3f7cca283c6aed481a.min.js",
		'tiddlywiki': "https:\/\/cfr.slack-edge.com\/bv1-6\/codemirror_lang_tiddlywiki.581d4d5c73d3e76c9d58.min.js",
		'tiki': "https:\/\/cfr.slack-edge.com\/bv1-6\/codemirror_lang_tiki.6f9b54a117a2e2f4d52c.min.js",
		'toml': "https:\/\/cfr.slack-edge.com\/bv1-6\/codemirror_lang_toml.878f510bef8da2225a02.min.js",
		'tornado': "https:\/\/cfr.slack-edge.com\/bv1-6\/codemirror_lang_tornado.b946e16934ce10ef6559.min.js",
		'troff': "https:\/\/cfr.slack-edge.com\/bv1-6\/codemirror_lang_troff.33bfa2cd395d5bd4bad9.min.js",
		'ttcn': "https:\/\/cfr.slack-edge.com\/bv1-6\/codemirror_lang_ttcn.e2b80a3c2122e324b36d.min.js",
		'ttcn:cfg': "https:\/\/cfr.slack-edge.com\/bv1-6\/codemirror_lang_ttcn-cfg.d82b3405e15de5ea0e35.min.js",
		'turtle': "https:\/\/cfr.slack-edge.com\/bv1-6\/codemirror_lang_turtle.9849938440da71698018.min.js",
		'twig': "https:\/\/cfr.slack-edge.com\/bv1-6\/codemirror_lang_twig.e64f6f02ff54e24de634.min.js",
		'vb': "https:\/\/cfr.slack-edge.com\/bv1-6\/codemirror_lang_vb.affe8f658f5b6e14bf2a.min.js",
		'vbscript': "https:\/\/cfr.slack-edge.com\/bv1-6\/codemirror_lang_vbscript.1490645d935d95f1de55.min.js",
		'velocity': "https:\/\/cfr.slack-edge.com\/bv1-6\/codemirror_lang_velocity.004cec3aa510925d6ba3.min.js",
		'verilog': "https:\/\/cfr.slack-edge.com\/bv1-6\/codemirror_lang_verilog.e8f0744436c52b02f5d7.min.js",
		'vhdl': "https:\/\/cfr.slack-edge.com\/bv1-6\/codemirror_lang_vhdl.55935119e174a9f83d03.min.js",
		'vue': "https:\/\/cfr.slack-edge.com\/bv1-6\/codemirror_lang_vue.117dfa8d3b2e06a3729d.min.js",
		'xml': "https:\/\/cfr.slack-edge.com\/bv1-6\/codemirror_lang_xml.b5642b0a2ba5a812fcbb.min.js",
		'xquery': "https:\/\/cfr.slack-edge.com\/bv1-6\/codemirror_lang_xquery.518c3b3a5202772ea69b.min.js",
		'yaml': "https:\/\/cfr.slack-edge.com\/bv1-6\/codemirror_lang_yaml.10d8ca287133a4d02c51.min.js",
		'z80': "https:\/\/cfr.slack-edge.com\/bv1-6\/codemirror_lang_z80.b7ad5b5dee331969fc76.min.js"
	}		},

		notification_sounds: [{"value":"b2.mp3","label":"Ding","url":"https:\/\/cfr.slack-edge.com\/7e91\/sounds\/push\/b2.mp3","url_ogg":"https:\/\/cfr.slack-edge.com\/46ebb\/sounds\/push\/b2.ogg"},{"value":"animal_stick.mp3","label":"Boing","url":"https:\/\/cfr.slack-edge.com\/7e91\/sounds\/push\/animal_stick.mp3","url_ogg":"https:\/\/cfr.slack-edge.com\/46ebb\/sounds\/push\/animal_stick.ogg"},{"value":"been_tree.mp3","label":"Drop","url":"https:\/\/cfr.slack-edge.com\/7e91\/sounds\/push\/been_tree.mp3","url_ogg":"https:\/\/cfr.slack-edge.com\/46ebb\/sounds\/push\/been_tree.ogg"},{"value":"complete_quest_requirement.mp3","label":"Ta-da","url":"https:\/\/cfr.slack-edge.com\/7e91\/sounds\/push\/complete_quest_requirement.mp3","url_ogg":"https:\/\/cfr.slack-edge.com\/46ebb\/sounds\/push\/complete_quest_requirement.ogg"},{"value":"confirm_delivery.mp3","label":"Plink","url":"https:\/\/cfr.slack-edge.com\/7e91\/sounds\/push\/confirm_delivery.mp3","url_ogg":"https:\/\/cfr.slack-edge.com\/46ebb\/sounds\/push\/confirm_delivery.ogg"},{"value":"flitterbug.mp3","label":"Wow","url":"https:\/\/cfr.slack-edge.com\/7e91\/sounds\/push\/flitterbug.mp3","url_ogg":"https:\/\/cfr.slack-edge.com\/46ebb\/sounds\/push\/flitterbug.ogg"},{"value":"here_you_go_lighter.mp3","label":"Here you go","url":"https:\/\/cfr.slack-edge.com\/7e91\/sounds\/push\/here_you_go_lighter.mp3","url_ogg":"https:\/\/cfr.slack-edge.com\/46ebb\/sounds\/push\/here_you_go_lighter.ogg"},{"value":"hi_flowers_hit.mp3","label":"Hi","url":"https:\/\/cfr.slack-edge.com\/7e91\/sounds\/push\/hi_flowers_hit.mp3","url_ogg":"https:\/\/cfr.slack-edge.com\/46ebb\/sounds\/push\/hi_flowers_hit.ogg"},{"value":"knock_brush.mp3","label":"Knock Brush","url":"https:\/\/cfr.slack-edge.com\/7e91\/sounds\/push\/knock_brush.mp3","url_ogg":"https:\/\/cfr.slack-edge.com\/46ebb\/sounds\/push\/knock_brush.ogg"},{"value":"save_and_checkout.mp3","label":"Whoa!","url":"https:\/\/cfr.slack-edge.com\/7e91\/sounds\/push\/save_and_checkout.mp3","url_ogg":"https:\/\/cfr.slack-edge.com\/46ebb\/sounds\/push\/save_and_checkout.ogg"},{"value":"item_pickup.mp3","label":"Yoink","url":"https:\/\/cfr.slack-edge.com\/7e91\/sounds\/push\/item_pickup.mp3","url_ogg":"https:\/\/cfr.slack-edge.com\/46ebb\/sounds\/push\/item_pickup.ogg"},{"value":"hummus.mp3","label":"Hummus","url":"https:\/\/cfr.slack-edge.com\/7fa9\/sounds\/push\/hummus.mp3","url_ogg":"https:\/\/cfr.slack-edge.com\/46ebb\/sounds\/push\/hummus.ogg"},{"value":"none","label":"None"}],
		alert_sounds: [{"value":"frog.mp3","label":"Frog","url":"https:\/\/slack.global.ssl.fastly.net\/a34a\/sounds\/frog.mp3"}],
		call_sounds: [{"value":"call\/alert_v2.mp3","label":"Alert","url":"https:\/\/slack.global.ssl.fastly.net\/08f7\/sounds\/call\/alert_v2.mp3"},{"value":"call\/incoming_ring_v2.mp3","label":"Incoming ring","url":"https:\/\/slack.global.ssl.fastly.net\/08f7\/sounds\/call\/incoming_ring_v2.mp3"},{"value":"call\/outgoing_ring_v2.mp3","label":"Outgoing ring","url":"https:\/\/slack.global.ssl.fastly.net\/08f7\/sounds\/call\/outgoing_ring_v2.mp3"},{"value":"call\/pop_v2.mp3","label":"Incoming reaction","url":"https:\/\/slack.global.ssl.fastly.net\/08f7\/sounds\/call\/pop_v2.mp3"},{"value":"call\/they_left_call_v2.mp3","label":"They left call","url":"https:\/\/slack.global.ssl.fastly.net\/08f7\/sounds\/call\/they_left_call_v2.mp3"},{"value":"call\/you_left_call_v2.mp3","label":"You left call","url":"https:\/\/slack.global.ssl.fastly.net\/08f7\/sounds\/call\/you_left_call_v2.mp3"},{"value":"call\/they_joined_call_v2.mp3","label":"They joined call","url":"https:\/\/slack.global.ssl.fastly.net\/08f7\/sounds\/call\/they_joined_call_v2.mp3"},{"value":"call\/you_joined_call_v2.mp3","label":"You joined call","url":"https:\/\/slack.global.ssl.fastly.net\/08f7\/sounds\/call\/you_joined_call_v2.mp3"},{"value":"call\/confirmation_v2.mp3","label":"Confirmation","url":"https:\/\/slack.global.ssl.fastly.net\/08f7\/sounds\/call\/confirmation_v2.mp3"}],
		call_sounds_version: "v2",
		a11y_sounds: [],
				default_tz: "America\/Los_Angeles",
		
		feature_builder_i18n: false,
		feature_builder_slash_command: false,
		feature_granular_dnd: false,
		feature_multi_file_upload: false,
		feature_migration_org_approvals: true,
		feature_tinyspeck: false,
		feature_enterprise_custom_tos: true,
		feature_webapp_always_collect_initial_time_period_stats: false,
		feature_search_skip_context: false,
		feature_flannel_use_canary_sometimes: false,
		feature_ssb_q218_deprecation: true,
		feature_ssb_q218_deprecation_modal: true,
		feature_ssb_q218_deprecation_block: true,
		feature_deprecate_q119_unsupported: true,
		feature_deprecate_q119_unsupported_toast: true,
		feature_deprecate_q119_mobile: true,
		feature_deprecate_q119_outdated: true,
		feature_deprecate_q119_outdated_toast: true,
		feature_deprecate_q119_os: true,
		feature_deprecate_q119_os_toast: true,
		feature_deprecate_q119_modal: false,
		feature_deprecate_get_member_by_name: false,
		feature_simplify_all_unreads_button: false,
		feature_modern_edit_format: true,
		feature_react_file_viewer: false,
		feature_unknown_files: false,
		feature_pillow_files: true,
		feature_jumper_presence: true,
		feature_presence_throttle: true,
		feature_add_message_perf: false,
		feature_jump_to_message: false,
		feature_slurp_bots: true,
		feature_team_rename_m11n: false,
		feature_team_icon_m11n: true,
		feature_select_model_option_fetcher_m11n: false,
		feature_extra_bot_logs: false,
		feature_react_threads: true,
		feature_react_all_threads: false,
		feature_react_all_unreads: false,
		feature_untrusted_devices_ms_copy: false,
		feature_untrusted_devices_fe_updates: false,
		feature_file_threads: true,
		feature_file_threads_dark_launch: true,
		feature_broadcast_indicator: true,
		feature_new_replies_after_bcast: true,
		feature_sonic_emoji: false,
		feature_subteam_members_diff: true,
		feature_email_ingestion: false,
		feature_sidebar_context_menu: false,
		feature_attachments_inline: false,
		feature_fix_files: true,
		feature_paging_api: false,
		feature_send_host_team_to_client: true,
		feature_custom_status_expiry: true,
		feature_better_snooze: true,
		feature_sonic_dnd: true,
		feature_sonic_dnd_manager: false,
		feature_sonic_dnd_rtm: false,
		feature_sonic_presence_manager: false,
		feature_faster_count_all_unreads: false,
		feature_modern_user_groups_rtm: true,
		feature_sonic_user_groups: false,
		feature_lazy_user_groups: false,
		feature_modern_rtm_pins: true,
		feature_untrustworthy_navigator_online: true,
		feature_connectivity_manager: false,
		feature_enterprise_app_teams: true,
		feature_ent_app_management_restriction: false,
		feature_entitlements: true,
		feature_grid_archive_link_fixes: true,
		feature_sonic_member_directory: false,
		feature_modernized_xws_permalink_dialogs: false,
		feature_safeguard_org_retention: true,
		feature_dashboard_sortable_lists: false,
		feature_distribute_clone_apps: true,
		feature_leave_workspace_improvements: true,
		feature_enteprise_user_teams_update: true,
		feature_find_your_workspace: true,
		feature_sk_lato_cleanup: false,
		feature_sk_loading_button_motions: false,
		feature_sk_base_icon: false,
		feature_saml_authn_key_expiry_date: true,
		feature_app_approvals_scope_awareness: false,
		feature_wta_perm_api_split: false,
		feature_wta_conversations_api_channel_created_msg: false,
		feature_file_links_betterer: false,
		feature_enterprise_dm_deeplink: true,
		feature_enterprise_dm_deeplink_copy_update: true,
		feature_guest_api_changes: false,
		feature_gdpr_exports: true,
		feature_allow_bulk_delete_join_leave_messages: true,
		feature_wysiwyg_composer: false,
		feature_wysiwyg_client_toolbar: false,
		feature_shared_channels_enterprise: false,
		feature_process_shared_team_ids_all_channels: true,
		feature_is_team_external_client: false,
		feature_shared_channels_enterprise_client: false,
		feature_shared_channels_invite_errors: false,
		feature_shared_channels_reactions_write_one_shard: true,
		feature_shared_channels_reactions_read_all_teams: true,
		feature_snapshots_the_revenge: false,
		feature_mpim_channels: false,
		feature_esc_connected_workspaces_search: false,
		feature_conversations_list: true,
		feature_gdpr_user_join_tos: true,
		feature_user_invite_tos_april_2018: true,
		feature_modernize_invites: false,
		feature_winssb_beta_channel: false,
		feature_incremental_unread_counts: false,
		feature_cust_acq_i18n_tweaks: false,
		feature_gdpr_content_updates: true,
		feature_marketing_build_split: false,
		feature_presence_sub: true,
		feature_whitelist_zendesk_chat_widget: false,
		feature_live_support_free_plan: false,
		feature_threads_copy_change: false,
		feature_offline_mode: false,
		feature_force_ls_compression: false,
		feature_name_tagging_client: true,
		feature_name_tagging_client_autocomplete: false,
		feature_name_tagging_client_topic_purpose: false,
		feature_use_imgproxy_resizing: true,
		feature_share_mention_comment_cleanup: false,
		feature_external_files: false,
		feature_desktop_sandbox_signin: true,
		feature_electron_memory_logging: false,
		feature_native_app_start_non_mac: false,
		feature_localization_phase_two: false,
		feature_locale_es_LA: false,
		feature_locale_en_GB: false,
		feature_locale_pt_BR: false,
		feature_org_token_i18n: false,
		feature_channel_exports: false,
		feature_docs: false,
		feature_boot_fallback_view_v1: false,
		feature_calls_esc_ui: true,
		feature_spock_calls: false,
		feature_calls_survey_request_response: false,
		feature_remote_files_api: false,
		feature_shared_channel_list_details: false,
		feature_default_shared_channels: true,
		feature_react_lfs: false,
		feature_log_quickswitcher_queries: true,
		feature_mc_mentions_tab_prefs_and_channels: true,
		feature_app_permissions_backend_enterprise: true,
		feature_token_ip_whitelist: true,
		feature_sidebar_theme_undo: false,
		feature_dont_set_channel_membership_twice: false,
		feature_allow_intra_word_formatting: true,
		feature_allow_cjk_autocomplete: true,
		feature_i18n_channels_validate_emoji: true,
		feature_fw_eng_normalization: true,
		feature_slim_scrollbar: false,
		feature_search_query_refinements: true,
		feature_primary_search: false,
		feature_prefs_modernization: false,
		feature_team_prefs_modernization: false,
		feature_react_prefs: false,
		feature_modern_sounds: false,
		feature_modern_fuzzy_matcher: false,
		feature_sidebar_filters: false,
		feature_sli_channel_archive_suggestions: true,
		feature_sli_channel_search: false,
		feature_sli_user_search: false,
		feature_modern_mpim_make_name: false,
		feature_react_messages: true,
		feature_modern_file_upload: false,
		feature_legacy_file_upload_analytics: true,
		feature_triage_mismatched_channel_ids_on_send: true,
		feature_sonic_activity: false,
		feature_sonic_dm_browser: false,
		feature_m11n_rules_channel_creation: false,
		feature_sonic_inputs: false,
		feature_threaded_giphy: false,
		feature_deprecate_unused_commands: true,
		feature_hide_unfurl_urls: false,
		feature_slack_unfurl_links: true,
		feature_react_member_profile_card: false,
		feature_service_import_lfs: false,
		feature_failover_proxy_check: false,
		feature_cdn_download_test: false,
		feature_flannel_client_failover: true,
		feature_react_team_picker: true,
		feature_a11y_datepicker: true,
		feature_app_index: false,
		feature_automount_services_channel_picker: false,
		feature_modernize_slack_actions: false,
		feature_gdrive_do_not_install_by_default: true,
		feature_delete_moved_channels: true,
		feature_single_workspace_redirect: true,
		feature_zero_workspace_onboarding: true,
		feature_user_tos: true,
		feature_oom_mv_channels_list: false,
		feature_sso_formatting_error: true,
		feature_single_user_workspace_pagination: true,
		feature_ekm_phase_2: false,
		feature_ekm_backfill_add_sleep: false,
		feature_ekm_file_revocation: false,
		feature_ekm_revocation_api_changes: false,
		feature_ekm_message_revocation_polling_test: false,
		feature_ekm_message_revocation: true,
		feature_longer_channel_names: false,
		feature_org_quick_switcher: true,
		feature_ms_latest: true,
		feature_guests_use_entitlements: true,
		feature_delete_empty_ims: false,
		feature_full_user_empty_ims: false,
		feature_app_space: true,
		feature_m11n_app_space: false,
		feature_app_space_links: true,
		feature_app_canvases: false,
		feature_app_views_phase_1: false,
		feature_message_blocks: false,
		feature_block_mounts: false,
		feature_attachments_v2: true,
		feature_block_kit_documentation: true,
		feature_block_kit_expandable_block: false,
		feature_show_block_kit_in_share_dialogs: false,
		feature_block_kit_event_block: false,
		feature_block_kit_user_block: false,
		feature_add_app_home_team_name: false,
		feature_date_picker: true,
		feature_beacon_js_errors: false,
		feature_app_dialogs_notify_on_cancel: true,
		feature_dialogs_v2_mobile: true,
		feature_user_app_disable_speed_bump: true,
		feature_app_profiles_fetch_management: true,
		feature_onedrive_picker: true,
		feature_onedrive_better_errors: true,
		feature_is_unknown_refactor: true,
		feature_lesson_onboarding: true,
		feature_tractor_shared_invite_link: true,
		feature_tractor_backup_channelname_copy: true,
		feature_tractor_slackbot_onboarding: true,
		feature_sk_tables: false,
		feature_grapevine_members: false,
		feature_legacy_flannel_xws: true,
		feature_degraded_send: true,
		feature_degraded_mode_improved: true,
		feature_one_id_to_rule_them_all: true,
		feature_duplicate_dms: true,
		feature_load_test: false,
		feature_load_test_emoji: false,
		feature_flannel_xhr_stats: false,
		feature_shorter_joiner_flow: true,
		feature_vitess_sidebar: false,
		feature_degraded_rtm_always_fails: false,
		feature_delete_team_and_apps: true,
		feature_pjpeg: false,
		feature_pdf_thumb: true,
		feature_apps_manage_permissions_scope_changes: true,
		feature_reminder_cross_workspace: true,
		feature_speedy_boot_handlebars: false,
		feature_block_kit_pillow_file: false,
		feature_channel_invite_modal_cannot_join: true,
		feature_expiring_credits: true,
		feature_email_prefs: true,
		feature_xhp_billing_pages: false,
		feature_xhp_fix_billing_items: false,
		feature_checkout_flow_translations: true,
		feature_checkout_flow_better_currency_picker: true,
		feature_checkout_v2_error_visibility: false,
		feature_modernize_banners_v3: false,
		feature_sonic_i18n: false,
		feature_flannel_always_use_canary: false,
		feature_global_nav: false,
		feature_global_nav_rollback: false,
		feature_global_nav_layout: false,
		feature_classic_nav: false,
		feature_message_spacing: false,
		feature_new_reactions: false,
		feature_prefs_m11n_muted_channels: false,
		feature_pages: false,
		feature_app_directory_home_page_redesign: true,
		feature_hidden_wksp_unfurls: true,
		feature_guest_wksp_unfurls: false,
		feature_workspace_scim_management: false,
		feature_redux_dev_tools: false,
		feature_unified_member: false,
		feature_new_unified_list_entities: false,
		feature_turn_mpdm_notifs_on: true,
		feature_browser_dragndrop: false,
		feature_desktop_force_production_channel: false,
		feature_desktop_logs_upload: true,
		feature_macos_disable_hw: true,
		feature_desktop_notifications_2018: false,
		feature_desktop_notification_warnings: true,
		feature_office_preview: true,
		feature_excel_office_preview: false,
		feature_org_aware_external_shared_channels: false,
		feature_org_aware_external_shared_channels_client: false,
		feature_quill_upgrade: true,
		feature_ally_sounds: false,
		feature_bots_not_members: false,
		feature_wta_modal_m11n: false,
		feature_wta_stop_creation: true,
		feature_m11n_channel_details: false,
		feature_deactivated_apps_table: false,
		feature_wta_org_level_apps: false,
		feature_shortcuts_prompt: true,
		feature_accessible_dialogs: true,
		feature_app_actions_global: false,
		feature_app_actions_fe_refactor: false,
		feature_shared_channel_free_trial_flow: true,
		feature_calls_clipboard_broadcasting_optin: true,
		feature_screen_share_needs_aero: false,
		feature_ent_unified_stars: false,
		feature_EVALUE_2407_xws_channel_delete_permissions: true,
		feature_calls_disable_iss_admin: true,
		feature_sli_trending_dashboard: false,
		feature_i18n_custom_status: true,
		feature_i18n_select_empty_state_string: false,
		feature_accessible_fs_dialogs: true,
		feature_channel_browser_dropdown: true,
		feature_slackday_unsent_msg_sync: false,
		feature_trap_kb_within_fs_modals: true,
		feature_dialog_speedbump: true,
		feature_modern_image_viewer: true,
		feature_emoji_by_id: true,
		feature_labels_for_core_objects: false,
		feature_wta_notifications: true,
		feature_video_file_codec_support: false,
		feature_mc_migration_banner: true,
		feature_file_comment_deleted_rtm_handler: false,
		feature_attachment_text_more: false,
		feature_turn_off_sso_with_email_option: true,
		feature_aria_application_mode: false,
		feature_compliance_to_select_rebrand_mc: true,
		feature_scg_api_filters: false,
		feature_modern_starred_items: false,
		feature_modern_profile_flexpane: false,
		feature_mcg_conversion_channels: true,
		feature_scg_conversion_channels: true,
		feature_invite_user_groups: false,
		feature_invite_user_groups_slash_cmd: false,
		feature_sk_basic_select: false,
		feature_delayed_message_api: true,
		feature_app_uninstall_notifications: true,
		feature_reduce_unexpected_uninstalls: true,
		feature_sonic_quick_switcher: false,
		feature_idp_group_warning: false,
		feature_track_time_spent: true,
		feature_file_search_sort: false,
		feature_announce_only: false,
		feature_delayed_messages_token_delete: true,
		feature_channel_is_new_create_edit: false,
		feature_newxp_joiner_landing_place: true,
		feature_imports_slack_private_data: true,
		feature_imports_summary_page: false,
		feature_imports_error_strings: false,
		feature_vat_project_jpy: false,
		feature_vat_project_rus_qst: true,
		feature_evalue_2641_disallow_enforce_orgwide_policy: false,
		feature_email_addon: true,
		feature_email_workobject_ui: false,
		feature_email_notify: false,
		feature_retention_esc: false,
		feature_calendar_simple_agenda_view: false,
		feature_analytics_enable_division: false,
		feature_enterprise_analytics_apps_tab: false,
		feature_enterprise_analytics_2019_q1_update: false,
		feature_existing_help_request_attachments: true,
		feature_esc_grid_migrations_client: false,
		feature_unfurl_metadata: false,
		feature_remove_gdrive_confirmation: false,
		feature_esc_user_info_profile_only: false,
		feature_approaching_msg_limit_banner_copy_translations: false,
		feature_reached_msg_limit_banner_copy_translations: false,

	client_logs: {"0":{"numbers":[0],"user_facing":false},"2":{"numbers":[2],"user_facing":false},"4":{"numbers":[4],"user_facing":false},"5":{"numbers":[5],"user_facing":false},"23":{"numbers":[23],"user_facing":false},"sounds":{"name":"sounds","numbers":[37]},"37":{"name":"sounds","numbers":[37],"user_facing":true},"47":{"numbers":[47],"user_facing":false},"48":{"numbers":[48],"user_facing":false},"Message History":{"name":"Message History","numbers":[58]},"58":{"name":"Message History","numbers":[58],"user_facing":true},"67":{"numbers":[67],"user_facing":false},"72":{"numbers":[72],"user_facing":false},"73":{"numbers":[73],"user_facing":false},"82":{"numbers":[82],"user_facing":false},"88":{"numbers":[88],"user_facing":false},"91":{"numbers":[91],"user_facing":false},"93":{"numbers":[93],"user_facing":false},"96":{"numbers":[96],"user_facing":false},"99":{"numbers":[99],"user_facing":false},"Channel Marking (MS)":{"name":"Channel Marking (MS)","numbers":[141]},"141":{"name":"Channel Marking (MS)","numbers":[141],"user_facing":true},"Channel Marking (Client)":{"name":"Channel Marking (Client)","numbers":[142]},"142":{"name":"Channel Marking (Client)","numbers":[142],"user_facing":true},"Close Old IMs (Client)":{"name":"Close Old IMs (Client)","numbers":[221]},"221":{"name":"Close Old IMs (Client)","numbers":[221],"user_facing":true},"365":{"numbers":[365],"user_facing":false},"389":{"numbers":[389],"user_facing":false},"438":{"numbers":[438],"user_facing":false},"444":{"numbers":[444],"user_facing":false},"481":{"numbers":[481],"user_facing":false},"488":{"numbers":[488],"user_facing":false},"529":{"numbers":[529],"user_facing":false},"552":{"numbers":[552],"user_facing":false},"dashboard":{"name":"dashboard","numbers":[666]},"666":{"name":"dashboard","numbers":[666],"user_facing":false},"667":{"numbers":[667],"user_facing":false},"773":{"numbers":[773],"user_facing":false},"777":{"numbers":[777],"user_facing":false},"794":{"numbers":[794],"user_facing":false},"Client Responsiveness":{"name":"Client Responsiveness","user_facing":false,"numbers":[808]},"808":{"name":"Client Responsiveness","user_facing":false,"numbers":[808]},"Message Pane Scrolling":{"name":"Message Pane Scrolling","numbers":[888]},"888":{"name":"Message Pane Scrolling","numbers":[888],"user_facing":true},"Unread banner and divider":{"name":"Unread banner and divider","numbers":[999]},"999":{"name":"Unread banner and divider","numbers":[999],"user_facing":true},"1000":{"numbers":[1000],"user_facing":false},"Duplicate badges (desktop app icons)":{"name":"Duplicate badges (desktop app icons)","numbers":[1701]},"1701":{"name":"Duplicate badges (desktop app icons)","numbers":[1701],"user_facing":true},"Members":{"name":"Members","numbers":[1975]},"1975":{"name":"Members","numbers":[1975],"user_facing":true},"lazy loading":{"name":"lazy loading","numbers":[1989]},"1989":{"name":"lazy loading","numbers":[1989],"user_facing":true},"thin_channel_membership":{"name":"thin_channel_membership","numbers":[1990]},"1990":{"name":"thin_channel_membership","numbers":[1990],"user_facing":true},"stats":{"name":"stats","numbers":[1991]},"1991":{"name":"stats","numbers":[1991],"user_facing":true},"ms":{"name":"ms","numbers":[1996]},"1996":{"name":"ms","numbers":[1996],"user_facing":true},"shared_channels_connection":{"name":"shared_channels_connection","numbers":[1999]},"1999":{"name":"shared_channels_connection","numbers":[1999],"user_facing":false},"dnd":{"name":"dnd","numbers":[2002]},"2002":{"name":"dnd","numbers":[2002],"user_facing":true},"2003":{"numbers":[2003],"user_facing":false},"Threads":{"name":"Threads","numbers":[2004]},"2004":{"name":"Threads","numbers":[2004],"user_facing":true},"2005":{"numbers":[2005],"user_facing":false},"Reactions":{"name":"Reactions","numbers":[2006]},"2006":{"name":"Reactions","numbers":[2006],"user_facing":true},"TSSSB.focusTabAndSwitchToChannel":{"name":"TSSSB.focusTabAndSwitchToChannel","numbers":[2007]},"2007":{"name":"TSSSB.focusTabAndSwitchToChannel","numbers":[2007],"user_facing":false},"Presence Detection":{"name":"Presence Detection","numbers":[2017]},"2017":{"name":"Presence Detection","numbers":[2017],"user_facing":true},"mc_sibs":{"name":"mc_sibs","numbers":[9999]},"9999":{"name":"mc_sibs","numbers":[9999],"user_facing":false},"Member searching":{"name":"Member searching","numbers":[90211]},"90211":{"name":"Member searching","numbers":[90211],"user_facing":true},"98765":{"numbers":[98765],"user_facing":false},"8675309":{"numbers":[8675309],"user_facing":false}},


		img: {
			app_icon: 'https://cfr.slack-edge.com/4f28/img/slack_growl_icon.png'
		},

		page_needs_custom_emoji: false,
		page_needs_enterprise: false	};

	
	
	
	
	// client boot data
		
		
	
	
	
	
	
								boot_data.experiment_assignments = {"social_nudge_v0":{"experiment_id":"57452636336","type":"team","group":"","trigger":"finished","log_exposures":false,"exposure_id":471432189698},"migrate_stats_to_cds":{"experiment_id":"70039090853","type":"team","group":"stats_cds","trigger":"finished","log_exposures":false,"exposure_id":471432189698},"migrate_stats_enable_dark_reads":{"experiment_id":"70047028338","type":"team","group":"stats_mysql_and_cds_dark_reads","trigger":"finished","log_exposures":false,"exposure_id":471432189698},"domain_signup_links_for_mobile":{"experiment_id":"70804845972","type":"team","group":"treatment","trigger":"finished","log_exposures":false,"exposure_id":471432189698},"update_invite_coachmarks_cta":{"experiment_id":"84280109270","type":"team","group":"invite_cm_got_ita","trigger":"finished","log_exposures":false,"exposure_id":471432189698},"google_contacts_invite_existing":{"experiment_id":"93086200404","type":"team","group":"google_contacts","trigger":"finished","log_exposures":false,"exposure_id":471432189698},"google_contacts_invite_new":{"experiment_id":"93096027173","type":"team","group":"","trigger":"finished","log_exposures":false,"exposure_id":471432189698},"app_dir_channel_sidebar_cta":{"experiment_id":"159072431845","type":"team","group":"control","trigger":"finished","log_exposures":false,"exposure_id":471432189698},"email_joiners_about_joiners":{"experiment_id":"169717077127","type":"team","group":"send_joiners_emails","trigger":"finished","log_exposures":false,"exposure_id":471432189698},"guest_expiration_announcement":{"experiment_id":"175209361220","type":"team","group":"whats_new","trigger":"launch_team","log_exposures":false,"exposure_id":471432189698},"edit_team_status_presets":{"experiment_id":"176895283504","type":"team","group":"treatment","trigger":"launch_team","log_exposures":false,"exposure_id":471432189698},"calls_interactive_ss":{"experiment_id":"194479526932","type":"team","group":"enabled","trigger":"finished","log_exposures":false,"exposure_id":471432189698},"pricing_page_v2_2_signedin":{"experiment_id":"199590432480","type":"team","group":"treatment","trigger":"finished","log_exposures":false,"exposure_id":471432189698},"slackbot_help_v2_buttons":{"experiment_id":"200318583393","type":"team","group":"treatment","trigger":"finished","log_exposures":false,"exposure_id":471432189698},"instant_invite_link_ios":{"experiment_id":"201626291921","type":"team","group":"enabled","trigger":"finished","log_exposures":false,"exposure_id":471432189698},"feat_onepage_signup_v2":{"experiment_id":"205971003682","type":"team","group":"single_page","trigger":"finished","log_exposures":false,"exposure_id":471432189698},"feat_limit_meters":{"experiment_id":"212162225108","type":"team","group":"show_limit_meters","trigger":"finished","log_exposures":false,"exposure_id":471432189698},"feat_msg_lim_search":{"experiment_id":"246809624001","type":"team","group":"control","trigger":"finished","log_exposures":false,"exposure_id":471432189698},"email_app_onboard_all":{"experiment_id":"252073272226","type":"team","group":"treatment","trigger":"finished","log_exposures":false,"exposure_id":471432189698},"email_app_onboard_admins":{"experiment_id":"252209807013","type":"team","group":"treatment","trigger":"finished","log_exposures":false,"exposure_id":471432189698},"shared_channels_trial_flow":{"experiment_id":"257137512243","type":"team","group":"control","trigger":"finished","log_exposures":false,"exposure_id":471432189698},"newxp_tips_loading_messages":{"experiment_id":"264238720563","type":"team","group":"treatment","trigger":"finished","log_exposures":false,"exposure_id":471432189698},"small_feat_list":{"experiment_id":"264419561860","type":"team","group":"treatment","trigger":"finished","log_exposures":false,"exposure_id":471432189698},"email_slack_certification":{"experiment_id":"265884802150","type":"team","group":"","trigger":"finished","log_exposures":false,"exposure_id":471432189698},"no_content_avails":{"experiment_id":"272365364819","type":"team","group":"treatment","trigger":"finished","log_exposures":false,"exposure_id":471432189698},"email_post_upgrade_onboard":{"experiment_id":"273987023266","type":"team","group":"control","trigger":"hash_team","log_exposures":true,"exposure_id":471432189698},"less_android_badges":{"experiment_id":"274765772358","type":"team","group":"treatment","trigger":"finished","log_exposures":false,"exposure_id":471432189698},"replace_billing_link":{"experiment_id":"276628623189","type":"team","group":"has_plans_link","trigger":"finished","log_exposures":false,"exposure_id":471432189698},"apns2":{"experiment_id":"279378859908","type":"team","group":"","trigger":"finished","log_exposures":false,"exposure_id":471432189698},"free_trial_in_prod":{"experiment_id":"281625415173","type":"team","group":"","trigger":"finished","log_exposures":false,"exposure_id":471432189698},"apns2_part_2":{"experiment_id":"283505922689","type":"team","group":"","trigger":"finished","log_exposures":false,"exposure_id":471432189698},"apns_collapse":{"experiment_id":"286616632582","type":"team","group":"","trigger":"finished","log_exposures":false,"exposure_id":471432189698},"install_apps_link":{"experiment_id":"293721709264","type":"team","group":"","trigger":"finished","log_exposures":false,"exposure_id":471432189698},"test_free_trial_in_prod":{"experiment_id":"300479776051","type":"team","group":"control","trigger":"hash_team","log_exposures":true,"exposure_id":471432189698},"email_sfmc_team_joiner_welcome":{"experiment_id":"305390696324","type":"team","group":"treatment","trigger":"finished","log_exposures":false,"exposure_id":471432189698},"calls_callstats":{"experiment_id":"313435842625","type":"team","group":"disabled","trigger":"finished","log_exposures":false,"exposure_id":471432189698},"approaching_file_limit_banner":{"experiment_id":"331827143204","type":"team","group":"treatment","trigger":"finished","log_exposures":false,"exposure_id":471432189698},"sfmc_trial_onboarding":{"experiment_id":"349854899936","type":"team","group":"","trigger":"finished","log_exposures":false,"exposure_id":471432189698},"email_reached_msg_lim":{"experiment_id":"350501017682","type":"team","group":"treatment","trigger":"hash_team","log_exposures":true,"exposure_id":471432189698},"approaching_file_limit_banner_v2":{"experiment_id":"359153329456","type":"team","group":"treatment","trigger":"finished","log_exposures":false,"exposure_id":471432189698},"logged_in_standard_page_2":{"experiment_id":"367507733044","type":"team","group":"control","trigger":"finished","log_exposures":false,"exposure_id":471432189698},"sfmc_actions_announcement":{"experiment_id":"373115816290","type":"team","group":"control","trigger":"hash_team","log_exposures":true,"exposure_id":471432189698},"calls_no_boomers":{"experiment_id":"375834290021","type":"team","group":"enabled","trigger":"finished","log_exposures":false,"exposure_id":471432189698},"logged_in_standard_page_2_2":{"experiment_id":"383075441360","type":"team","group":"control","trigger":"finished","log_exposures":false,"exposure_id":471432189698},"sfmc_onboarding_webinar":{"experiment_id":"384659518992","type":"team","group":"","trigger":"finished","log_exposures":false,"exposure_id":471432189698},"receipts_purchase":{"experiment_id":"388283674291","type":"team","group":"treatment","trigger":"finished","log_exposures":false,"exposure_id":471432189698},"monetization_no_flannel_login":{"experiment_id":"390413163412","type":"team","group":"fast","trigger":"finished","log_exposures":false,"exposure_id":471432189698},"sfmc_connectingtools_webinar":{"experiment_id":"391331103233","type":"team","group":"treatment","trigger":"hash_team","log_exposures":true,"exposure_id":471432189698},"search_test_exp_2":{"experiment_id":"394969365857","type":"team","group":"","trigger":"finished","log_exposures":false,"exposure_id":471432189698},"search_improvements":{"experiment_id":"396534667719","type":"team","group":"search_improvements","trigger":"finished","log_exposures":false,"exposure_id":471432189698},"sfmc_paidslack_webinar":{"experiment_id":"398407564070","type":"team","group":"treatment","trigger":"hash_team","log_exposures":true,"exposure_id":471432189698},"stripe_l3_data":{"experiment_id":"402252049446","type":"team","group":"treatment","trigger":"finished","log_exposures":false,"exposure_id":471432189698},"search_improvements_enterprise":{"experiment_id":"402584856352","type":"team","group":"search_improvements_enterprise","trigger":"finished","log_exposures":false,"exposure_id":471432189698},"stripe_l3_data_v2":{"experiment_id":"404550106855","type":"team","group":"treatment","trigger":"finished","log_exposures":false,"exposure_id":471432189698},"paid_feature_badge":{"experiment_id":"420716644723","type":"team","group":"has_badge","trigger":"finished","log_exposures":false,"exposure_id":471432189698},"invite_guest_awareness":{"experiment_id":"420847333122","type":"team","group":"control","trigger":"finished","log_exposures":false,"exposure_id":471432189698},"newxp_onboarding_2_0_redux":{"experiment_id":"420870515552","type":"team","group":"control","trigger":"finished","log_exposures":false,"exposure_id":471432189698},"plan_awareness_team_menu_free":{"experiment_id":"423510191649","type":"team","group":"treatment","trigger":"finished","log_exposures":false,"exposure_id":471432189698},"plan_awareness_team_menu_paid":{"experiment_id":"423857279684","type":"team","group":"treatment","trigger":"finished","log_exposures":false,"exposure_id":471432189698},"calls_orca_beta_2018_08_28":{"experiment_id":"424285508673","type":"team","group":"","trigger":"finished","log_exposures":false,"exposure_id":471432189698},"new_dunning_notifs":{"experiment_id":"443295043686","type":"team","group":"treatment","trigger":"finished","log_exposures":false,"exposure_id":471432189698},"lc_mon_plans_price_descriptions":{"experiment_id":"468051592354","type":"team","group":"treatment","trigger":"finished","log_exposures":false,"exposure_id":471432189698},"lc_mon_downgrade":{"experiment_id":"478112591936","type":"team","group":"treatment","trigger":"finished","log_exposures":false,"exposure_id":471432189698},"lc_planspage_zendesk":{"experiment_id":"480447368694","type":"team","group":"control","trigger":"finished","log_exposures":false,"exposure_id":471432189698},"invite_guest_awareness_v2":{"experiment_id":"481187860789","type":"team","group":"control","trigger":"finished","log_exposures":false,"exposure_id":471432189698},"paid_onboarding":{"experiment_id":"482395575254","type":"team","group":"treatment","trigger":"finished","log_exposures":false,"exposure_id":471432189698},"calls_orca_beta_2018_10_09":{"experiment_id":"484242518580","type":"team","group":"disabled","trigger":"finished","log_exposures":false,"exposure_id":471432189698},"channels_latest_write_vitess_dev":{"experiment_id":"498395100628","type":"team","group":"","trigger":"finished","log_exposures":false,"exposure_id":471432189698},"vitess_latest_write_dev":{"experiment_id":"499640807760","type":"team","group":"disabled","trigger":"hash_team","log_exposures":true,"exposure_id":471432189698},"search_users_solrcloud_writes":{"experiment_id":"510570949606","type":"team","group":"solrcloud_writes1","trigger":"hash_team","log_exposures":true,"exposure_id":471432189698},"invite_link_in_admin_email":{"experiment_id":"518438093062","type":"team","group":"control","trigger":"hash_team","log_exposures":true,"exposure_id":471432189698},"calls_orca_beta_2019_01_08":{"experiment_id":"518575684000","type":"team","group":"","trigger":"finished","log_exposures":false,"exposure_id":471432189698},"users_vitess_writes_bfill_prod":{"experiment_id":"520731456917","type":"team","group":"treatment","trigger":"finished","log_exposures":false,"exposure_id":471432189698},"ios_migrate_ext_cache_events":{"experiment_id":"527254918801","type":"team","group":"treatment","trigger":"launch_team","log_exposures":false,"exposure_id":471432189698},"channel_search_indexing":{"experiment_id":"527816425013","type":"team","group":"channel_search_indexing","trigger":"launch_team","log_exposures":false,"exposure_id":471432189698},"ios_use_client_counts":{"experiment_id":"533036845520","type":"team","group":"treatment","trigger":"hash_team","log_exposures":true,"exposure_id":471432189698},"lc_plans_page_nav_reroute":{"experiment_id":"536946502646","type":"team","group":"treatment","trigger":"hash_team","log_exposures":true,"exposure_id":471432189698},"lib_ud_users_vitessification":{"experiment_id":"546726003013","type":"team","group":"vitessified","trigger":"finished","log_exposures":false,"exposure_id":471432189698},"ios_calls_dp":{"experiment_id":"555610141888","type":"team","group":"treatment","trigger":"launch_team","log_exposures":false,"exposure_id":471432189698},"ios_channel_specific_notifications_dp_integration":{"experiment_id":"556227301123","type":"team","group":"treatment","trigger":"launch_team","log_exposures":false,"exposure_id":471432189698},"ios_dark_mode":{"experiment_id":"557407679303","type":"team","group":"treatment","trigger":"finished","log_exposures":false,"exposure_id":471432189698},"vitessify_team_and_username":{"experiment_id":"558166399169","type":"team","group":"vitessified","trigger":"finished","log_exposures":false,"exposure_id":471432189698},"ud_users_get_by_team_and_ids_vitessification":{"experiment_id":"558681806327","type":"team","group":"vitess","trigger":"launch_team","log_exposures":false,"exposure_id":471432189698},"ios_eventlog_port":{"experiment_id":"562296991813","type":"team","group":"treatment","trigger":"launch_team","log_exposures":false,"exposure_id":471432189698}};
			
	// inline_emoji
	boot_data.pref_emoji_mode = "";
	boot_data.pref_jumbomoji = 0;
	boot_data.pref_messages_theme = "";

</script>






		
	<!-- output_js "libs" -->
<script type="text/javascript" src="https://cfr.slack-edge.com/bv1-6/rollup-core_required_libs.64272105a1cd7c8d09cc.min.js" crossorigin="anonymous" onload="window._cdn ? _cdn.ok(this, arguments) : null" onerror="window._cdn ? _cdn.failed(this, arguments) : null"></script>


	<!-- output_js "application" -->
<script type="text/javascript" src="https://cfr.slack-edge.com/bv1-6/modern.vendor.7afa25aae612bdb3674b.min.js" crossorigin="anonymous" onload="window._cdn ? _cdn.ok(this, arguments) : null" onerror="window._cdn ? _cdn.failed(this, arguments) : null"></script>

<script type="text/javascript" src="https://cfr.slack-edge.com/bv1-6/application.526e93d9f8de5c9e534d.min.js" crossorigin="anonymous" onload="window._cdn ? _cdn.ok(this, arguments) : null" onerror="window._cdn ? _cdn.failed(this, arguments) : null"></script>


	<!-- output_js "page" -->

					<!-- output_js "core" -->
<script type="text/javascript" src="https://cfr.slack-edge.com/bv1-6/rollup-core_required_ts.d17080ec201547d52c20.min.js" crossorigin="anonymous" onload="window._cdn ? _cdn.ok(this, arguments) : null" onerror="window._cdn ? _cdn.failed(this, arguments) : null"></script>

<script type="text/javascript" src="https://cfr.slack-edge.com/bv1-6/TS.web.78400450ed7307d8d3a1.min.js" crossorigin="anonymous" onload="window._cdn ? _cdn.ok(this, arguments) : null" onerror="window._cdn ? _cdn.failed(this, arguments) : null"></script>

<script type="text/javascript" src="https://cfr.slack-edge.com/bv1-6/signals.923e8a7b513a58d4eca9.min.js" crossorigin="anonymous" onload="window._cdn ? _cdn.ok(this, arguments) : null" onerror="window._cdn ? _cdn.failed(this, arguments) : null"></script>


	<!-- output_js "core_web" -->
<script type="text/javascript" src="https://cfr.slack-edge.com/bv1-6/rollup-core_web.f1f58ed20c14e548d23a.min.js" crossorigin="anonymous" onload="window._cdn ? _cdn.ok(this, arguments) : null" onerror="window._cdn ? _cdn.failed(this, arguments) : null"></script>


	<!-- output_js "secondary" -->
<script type="text/javascript" src="https://cfr.slack-edge.com/bv1-6/rollup-secondary_a_required.f6d4d04fd8f70135b9c9.min.js" crossorigin="anonymous" onload="window._cdn ? _cdn.ok(this, arguments) : null" onerror="window._cdn ? _cdn.failed(this, arguments) : null"></script>

<script type="text/javascript" src="https://cfr.slack-edge.com/bv1-6/rollup-secondary_b_required.7f35a25e00b27969eb18.min.js" crossorigin="anonymous" onload="window._cdn ? _cdn.ok(this, arguments) : null" onerror="window._cdn ? _cdn.failed(this, arguments) : null"></script>


					
	
	<script type="text/javascript">TS.boot(boot_data);</script>

	<!-- output_js "regular" -->
<script type="text/javascript" src="https://cfr.slack-edge.com/bv1-6/sticky_nav.959256c0c0646922c0c0.min.js" crossorigin="anonymous" onload="window._cdn ? _cdn.ok(this, arguments) : null" onerror="window._cdn ? _cdn.failed(this, arguments) : null"></script>

<script type="text/javascript" src="https://cfr.slack-edge.com/bv1-6/warn_capslock.014b800a1eef7995b9fc.min.js" crossorigin="anonymous" onload="window._cdn ? _cdn.ok(this, arguments) : null" onerror="window._cdn ? _cdn.failed(this, arguments) : null"></script>

<script type="text/javascript" src="https://cfr.slack-edge.com/bv1-6/spin.fadf23416c65e46b840d.min.js" crossorigin="anonymous" onload="window._cdn ? _cdn.ok(this, arguments) : null" onerror="window._cdn ? _cdn.failed(this, arguments) : null"></script>

<script type="text/javascript" src="https://cfr.slack-edge.com/bv1-6/ladda.10a294ce1ae361338b2f.min.js" crossorigin="anonymous" onload="window._cdn ? _cdn.ok(this, arguments) : null" onerror="window._cdn ? _cdn.failed(this, arguments) : null"></script>

<script type="text/javascript" src="https://cfr.slack-edge.com/bv1-6/footer.85e4eac452995505cae3.min.js" crossorigin="anonymous" onload="window._cdn ? _cdn.ok(this, arguments) : null" onerror="window._cdn ? _cdn.failed(this, arguments) : null"></script>



			<script type="text/javascript">
					
				setTimeout(function() {
					$('input[name="email"]').val() ? $('input[name="password"]').focus() : $('input').filter(':visible:first').focus();
				}, 100);
			
						
			if (navigator.userAgent.match(/windows phone/i)) {
				$('input[name="password"]').css('font-family', 'sans-serif,arial,verdana,tahoma');
			}
		

		

		var $signin_btn = $('#signin_btn');
		$signin_btn.data('ladda', Ladda.create(document.querySelector('#signin_btn')));

		var no_sso = false;
		var team_id = 'TDVCQ5KLJ';
		var email_regex = new RegExp("[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?", 'i');

		// signin form
		$('#signin_form').on('submit', function(e) {

			var email = $.trim($('#email').val());
			var password = $.trim($('#password').val());

			// no email or invalid email
			if (!email || !email_regex.test(email)) {
				$('#email').focus().closest('p').addClass('error');
				e.preventDefault();
				return;
			}

			// no password
			if (!password) {
				$('#password').focus().closest('p').addClass('error');
				e.preventDefault();
				return;
			}

			// Prevent the form from submitting twice, which causes the following SSB signin bug:
			// https://slack-bugs.tinyspeck.com/14961
			$signin_btn.attr('disabled', true);
			$signin_btn.attr('aria-disabled', true);
			$signin_btn.data('ladda').start();
		});

		// magic login signin form
		$('#signin_form_magic').on('submit', function(e) {

			e.preventDefault();
			var email = $.trim($('#email').val());

			// no email or invalid email
			if (!email || !email_regex.test(email)) {
				$('#email').focus().closest('p').addClass('error');
			} else {
				$('[name=email]').val(email);
				$('#magic_login_options .js_insert_email').text(email);
				$('#signin_header, #signin_form, #magic_login_cta, .ssb_password').removeClass('hidden');
				$('#magic_login_options, #signin_form_magic, #email, .browser_password').addClass('hidden');
				$('#magic_login_use_password').focus();
                        }

                });

		// user given magic login, but wants to enter email/password
		$('#magic_login_use_password').on('click', function(e){

			e.preventDefault();
			$('.error').removeClass('error');
			$('#magic_login_options').addClass('hidden');
			$('#signin_form, #signin_header').removeClass('hidden');
			$('#password').focus();

		});

		$('.code_problem').on('click', function (e) {
			e.preventDefault();
			$('.send_code_block').slideToggle();
		});

		$('.view_more_email_domains_button').on('click', function() {
			var $team_email_domains = $('.team_email_domains');
			$team_email_domains.text($team_email_domains.data('team-email-domains-formatted'));
		});

		$(document).ready(function() {
			$forgot_pw = $('#forgot-pw');
			if ($forgot_pw.length) {
				/**
				 * Grab the current email that the user has entered before going to the
				 * 'forgot password' page so that we can prefill the email field.
				 */
				function grabEmail(e) {
					var $el = $(e.target);
					var new_url = $el.attr('href');
					var email = $('#email').val();

					/**
					 * Simple check to make sure that the user actually typed in what looks like an email.
					 * If what the user entered doesn't look like an email, don't prefill.
					 */
					if (email.length > 0 && email.indexOf('@') != -1) {
						new_url += '?email=' + encodeURIComponent(email);
					}

					$el.attr('href', new_url);
				}
				$forgot_pw.on('click', grabEmail);
			}
		});

		
	</script>


<style>.color_9f69e7:not(.nuc) {color:#9F69E7;}.color_4bbe2e:not(.nuc) {color:#4BBE2E;}.color_e7392d:not(.nuc) {color:#E7392D;}.color_3c989f:not(.nuc) {color:#3C989F;}.color_674b1b:not(.nuc) {color:#674B1B;}.color_e96699:not(.nuc) {color:#E96699;}.color_e0a729:not(.nuc) {color:#E0A729;}.color_684b6c:not(.nuc) {color:#684B6C;}.color_5b89d5:not(.nuc) {color:#5B89D5;}.color_2b6836:not(.nuc) {color:#2B6836;}.color_99a949:not(.nuc) {color:#99A949;}.color_df3dc0:not(.nuc) {color:#DF3DC0;}.color_4cc091:not(.nuc) {color:#4CC091;}.color_9b3b45:not(.nuc) {color:#9B3B45;}.color_d58247:not(.nuc) {color:#D58247;}.color_bb86b7:not(.nuc) {color:#BB86B7;}.color_5a4592:not(.nuc) {color:#5A4592;}.color_db3150:not(.nuc) {color:#DB3150;}.color_235e5b:not(.nuc) {color:#235E5B;}.color_9e3997:not(.nuc) {color:#9E3997;}.color_53b759:not(.nuc) {color:#53B759;}.color_c386df:not(.nuc) {color:#C386DF;}.color_385a86:not(.nuc) {color:#385A86;}.color_a63024:not(.nuc) {color:#A63024;}.color_5870dd:not(.nuc) {color:#5870DD;}.color_ea2977:not(.nuc) {color:#EA2977;}.color_50a0cf:not(.nuc) {color:#50A0CF;}.color_d55aef:not(.nuc) {color:#D55AEF;}.color_d1707d:not(.nuc) {color:#D1707D;}.color_43761b:not(.nuc) {color:#43761B;}.color_e06b56:not(.nuc) {color:#E06B56;}.color_8f4a2b:not(.nuc) {color:#8F4A2B;}.color_902d59:not(.nuc) {color:#902D59;}.color_de5f24:not(.nuc) {color:#DE5F24;}.color_a2a5dc:not(.nuc) {color:#A2A5DC;}.color_827327:not(.nuc) {color:#827327;}.color_3c8c69:not(.nuc) {color:#3C8C69;}.color_8d4b84:not(.nuc) {color:#8D4B84;}.color_84b22f:not(.nuc) {color:#84B22F;}.color_4ec0d6:not(.nuc) {color:#4EC0D6;}.color_e23f99:not(.nuc) {color:#E23F99;}.color_e475df:not(.nuc) {color:#E475DF;}.color_619a4f:not(.nuc) {color:#619A4F;}.color_a72f79:not(.nuc) {color:#A72F79;}.color_7d414c:not(.nuc) {color:#7D414C;}.color_aba727:not(.nuc) {color:#ABA727;}.color_965d1b:not(.nuc) {color:#965D1B;}.color_4d5e26:not(.nuc) {color:#4D5E26;}.color_dd8527:not(.nuc) {color:#DD8527;}.color_bd9336:not(.nuc) {color:#BD9336;}.color_e85d72:not(.nuc) {color:#E85D72;}.color_dc7dbb:not(.nuc) {color:#DC7DBB;}.color_bc3663:not(.nuc) {color:#BC3663;}.color_9d8eee:not(.nuc) {color:#9D8EEE;}.color_8469bc:not(.nuc) {color:#8469BC;}.color_73769d:not(.nuc) {color:#73769D;}.color_b14cbc:not(.nuc) {color:#B14CBC;}</style>

<!-- slack-www-hhvm-main-iad-ld82 / 2019-03-05 06:27:54 / va83c40842465cf4ceb17818e7798c1c4d489f319 / B:H -->


</body>
</html>