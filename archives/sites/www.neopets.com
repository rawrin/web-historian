<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!--
 host - neopets-web-67.811.mtvi.com
//-->
<html>

<head>
	<meta name="description" content="Neopets.Com - Virtual Pet Community! Join up for free games, shops, auctions, chat and more!">
	<meta name="keywords" content="pets, pet, games, game, virtual, chat, fun, prizes, play, virtual pet, kids">
	<meta name="robots" content="noodp, index, follow">
	<meta http-equiv="X-UA-Compatible" content="IE=8">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">


	<link rel="stylesheet" type="text/css" href="http://images.neopets.com/css/default.css?v=4">
	<link rel="stylesheet" type="text/css" href="http://images.neopets.com/css/ad.css?v=3">

	<link rel="stylesheet" type="text/css" href="http://images.neopets.com/css/themes/000_def_f65b1.css?v=4">
		
	<title>Welcome to Neopets!</title>

	<script id="js-framework" type="text/javascript" language="JavaScript" src="http://images.neopets.com/js/common.js?v=6"></script>

		<script src="http://images.neopets.com/js/jquery-1.7.1.min.js" type="text/javascript"></script>
	<script src="http://images.neopets.com/js/jquery-ui-1.8.17.min.js" type="text/javascript"></script>
	
	
	<script type="text/javascript">
	var Neo = {
		clog: function() {
			if (window.console && console.log) {
				if (arguments.length == 0) {
					console.log('! no arguments passed !');
				} else if (arguments.length == 1) {
					console.log(arguments[0]);
				} else {
					console.log(arguments);
				}
			}
		},
		popups: {
			list: [],
			add: function(popup) {
				Neo.popups.list.push(popup);
				Neo.fade.show();
			},
			rem: function(popup) {
				for (var i = Neo.popups.list.length - 1; i >= 0; i--) {
					var curPopup = Neo.popups.list[i];
					Neo.clog(i, popup, curPopup, popup == curPopup);
					if (curPopup == popup) {
						Neo.popups.list.splice(i, 1);
					}
				}
				if (Neo.popups.list.length == 0) {
					Neo.fade.hide();
				}
			},
			remAll: function() {
				Neo.popups.list = [];
				Neo.fade.hide();
			}
		},
		fade: {
			show: function() {
				$('#neoFade').show();
			},
			hide: function() {
				$('#neoFade').hide();
			}
		},
		setNp: function(newnp) {
			$('#npanchor').text(newnp);
		},
		precache: function(url) {
			if ($.isArray(url)) {
				for (var i = 0; i < url.length; i++) {
					new Image().src = url[i];
				}
			} else {
				new Image().src = url;
			}
		}
	};
	</script>
	<style type="text/css">
		#neoFade { display: none; position: fixed; top: 0px; left: 0px; width: 100%; height: 100%; opacity: 0.5; background: black; filter: alpha(opacity=50); z-index: 9500; }
	</style>
	
	<script id="js-browserdetect" type="text/javascript" language="JavaScript" src="http://images.neopets.com/js/getbrowser.js?v=1"></script>
	<script type="text/javascript" src="http://images.neopets.com/n.js"></script>	<script type="text/javascript">
	<!--
		var nl = "en";
		var nh = 8;
		var nm = 24;
		var ns = 53;
		var na = "pm";
		var ncl = new Array(0, 53, 104, 137, 169, 198, 231, 265, 299, 335, 368, 397, 427);

		window.setInterval('nc()', 1000);

		function sh(i) {
			ol.style.clip = "rect("+ncl[i-1]+" 128 "+ncl[i]+" 0)";
			ol.style.visibility = "visible";
		}

		function mo() {
			ol.style.visibility = "hidden";
		}

		function search_handle(searchForm) {
			searchForm.action = "/search.phtml";
			searchForm.target = "";
			searchForm.method = "post";
			searchForm.s.value = searchForm.q.value;
			searchForm.submit();
		};
		function logout_nchub() {
			var f = document.createElement("iframe");
			f.setAttribute("src", "http://nc.neopets.com/auth/logout?no-redirect=1");
			f.setAttribute("width", "0");
			f.setAttribute("height", "0");
			f.setAttribute("border", "0");
	
			var i = document.getElementById('logout_nchub');
			i.appendChild(f);

      var f = document.createElement("iframe");
      f.setAttribute("src", "http://s2.parature.com/ics/support/custhandler.asp?deptID=5174&task=signOut");
      f.setAttribute("width", "0");
      f.setAttribute("height", "0");
      f.setAttribute("border", "0");
  
      var i = document.getElementById('logout_parature');
      i.appendChild(f);			
		}
		jQuery(document).ready(function(){
			$('a#logout_link').click(function (event) {
				setTimeout(function() {window.location = '/logout.phtml';},1000);
				logout_nchub();
				return false;
			});
		});
	//-->
	</script>
<script type="text/javascript">
var _gaq = [];
</script>
</head>
<body class="en"><script type="text/javascript" src="http://images.neopets.com/js/kids/coda.js"></script>
<script type="text/javascript" src="http://games.mtvnservices.com/scripts/mtvngameloader.1.1.0.js"></script>
<script type="text/javascript" src="http://images.neopets.com/js/kids/ads.js"></script>
<script type="text/javascript">
function omnitureTrackPage(advertiser, id) { return sendReportingCall(id, advertiser); }
function omnitureTrackClick(advertiser, id) { return sendADLinkCall(advertiser + " - " + id); }
</script>
<script type="text/javascript">
	KIDS.ads.config = {"url":"/","text":"/","gameLoaderCap":"0","zone":"","ads":[{"size":"728x90","elementID":"ad-728x90IF","keyValues":";mtfIFPath=/asm/doubleclick/;","dartPercent":"1.0","refreshable":"true","refreshRate":"0.5","yahooAds":"false"},{"size":"300x250","elementID":"ad-300x250IF-atf","keyValues":"pos=atf;","dartPercent":"1.0","refreshable":"true","refreshRate":"0.5","yahooAds":"false"},{"size":"160x600","elementID":"ad-160x600IF","keyValues":"pos=atf;","dartPercent":"1.0","refreshable":"true","refreshRate":"0.5","yahooAds":"false"}],"demo":{"gender":false,"age":false}};
</script>
	<div id="neoFade"></div>
	<div id="pushdown_banner">
		<div id="ad-slug-wrapper">
			<table id="ad-table">
				<tr>
					<td class="slug"><img src="http://images.neopets.com/adslug-opa-l.png" width="13" height="66"></td>
					<td>
						<div id='ad-728x90Div'>
		<script type='text/javascript' language='javascript'>
		KIDS.ads.refresh.placeAd('ad-728x90Div');
	</script>
	</div>
					</td>
				</tr>
			</table>
		</div>
	</div>
<div id="main" class= >
<script type="text/javascript">
templateLogin = {
	showPopup: function() {
		document.getElementById('templateLoginPopup').style.display = 'block';
		document.getElementById('templateLoginPopupIntercept').style.display = 'block';
		document.getElementById('templateLoginPopupUsername').focus();
	},

	hidePopup: function() {
		document.getElementById('templateLoginPopup').style.display = 'none';
		document.getElementById('templateLoginPopupIntercept').style.display = 'none';
	},

	setDestination: function(dest) {
		document.getElementById('templateLoginDest').value = dest;
	},

	trackLoginInstead: function() {
			}
}
</script>

	<div id="templateLoginPopupIntercept" style="position: fixed; top: 0px; left: 0px; width: 100%; height: 100%; display: none; opacity: 0.4; z-index: 10000;" onclick="templateLogin.hidePopup();"></div>
	<div id="templateLoginPopup" style="position: absolute; top: 130px; right: 0px; width: 400px; height: 170px; display: none; z-index: 10001;">
		<img src="http://images.neopets.com/template/popups/login/login-to-neopets.png" style="position: absolute;">
		<div style="padding: 45px 5px 5px 5px; position: relative;">
		<form method="post" action="/login.phtml">
			<input type="hidden" id="templateLoginDest" name="destination" value="%2F">
			<table style="width: 350px;" align="center">
				<tr>
					<td valign="top" width="100px"><b>Username:</b></td>
					<td valign="top"><input type="text" name="username" id="templateLoginPopupUsername" size="30"></td>
				</tr>
				<tr>
					<td valign="top"><b>Password:</b></td>
					<td valign="top"><input type="password" name="password" size="30"><br><a href="/account/passwordreset.phtml" style="font-size: 8pt;">Forgot Password?</a><br><br></td>
				</tr>
				<tr>
					<td colspan="2" align="center"><input type="submit" value="Log In!"></td>
				</tr>
			</table>
		</form>
		</div>
	</div>

<div id="ban"  ></div>

	<div id="header">
		<table cellpadding="0" cellspacing="0" border="0">
			<tr>
				<td width="156" rowspan="3"><a href="/index.phtml"><img src="http://images.neopets.com/transparent_spacer.gif" width="156" height="77" alt="" border="0"></a></td>
				<td class="eventIcon sf" xalign="left">&nbsp;</td>
				<td class="user medText">
<a style="display: inline-block; background: url(http://images.neopets.com/template/np-fb-icons.png) no-repeat scroll 0px 0px transparent; padding-left: 18px; line-height: 13px;" href="javascript:;" onclick="templateLogin.showPopup();">Log in</a> | <a style="display: inline-block; background: url(http://images.neopets.com/template/np-fb-icons.png) no-repeat scroll 0px -13px transparent; padding-left: 18px; line-height: 13px;" href="javascript:;" onclick="templateFB.login();">Log in</a> |  <a href="/login/index.phtml">Sign up</a>				</td>
			</tr>
			<tr>
				<td colspan="2" id="navigation">
					<table width="100%" cellpadding="0" cellspacing="0" border="0">
						<tr>
							<td width="725" align="center">
<script type="text/javascript">
	// Yay for Suckerfish!
	startList = function() {
		if (document.all&&document.getElementById) {
			navRoot = document.getElementById("template_nav");
			for (i=0; i<navRoot.childNodes.length; i++) {
				node = navRoot.childNodes[i];
				if (node.nodeName=="LI") {
					node.onmouseover=function() {
						this.className+=" over";
					}
					node.onmouseout=function() {
						this.className=this.className.replace(" over", "");
					}
				}
			}
		}
	}
	window.onload=startList;
</script>

<ul id="template_nav">
	<li class="nav_image"><a href="/myaccount.phtml"><img src="http://images.neopets.com/themes/000_def_f65b1/navigation/myaccount.png" alt="" border="0" width="115" height="38"></a><ul class="dropdown">
			<li><a href="/myaccount.phtml">&raquo; Control Panel</a></li>
			<li><a href="/preferences.phtml">&raquo; Preferences</a></li>
			<li><a href="/userinfo.phtml">&raquo; Edit Profile</a></li>
			<li><a href="/neomessages.phtml">&raquo; Neomail</a></li>
			<li><a href="/neofriends.phtml">&raquo; Neofriends</a></li>
			<li><a href="/addpet.phtml">&raquo; Create a Neopet</a></li>
						<li><a href="/space/warehouse/prizecodes.phtml">&raquo; Redeem Code</a></li>
				</ul>

	<li class="nav_image"><a href="/customise/"><img src="http://images.neopets.com/themes/000_def_f65b1/navigation/customise.png" alt="" border="0" width="90" height="38"></a><ul class="dropdown">
			<li><a href="/customise/">&raquo; Customise Neopet</a></li>
			<li><a href="/inventory.phtml">&raquo; Inventory</a></li>
			<li><a href="/closet.phtml">&raquo; Closet</a></li>
			<li><a href="/neohome/"> &raquo; Neohomes</a></li>
			<li><a href="/addpet.phtml">&raquo; Create a Neopet</a></li>
			<li><a href="/pound/">&raquo; Pound</a></li>
		</ul>
	</li>

		<li class="nav_image"><a href="/games/"><img src="http://images.neopets.com/themes/000_def_f65b1/navigation/games.png" alt="" border="0" width="65" height="38"></a><ul class="dropdown">
			<li><a href="/games/">&raquo; Games Room</a></li>
			<li><a href="/games/category.phtml?sortby=pop">&raquo; Popular</a></li>
			<li><a href="/games/hiscores.phtml">&raquo; High Scores</a></li>
			<li><a href="/games/favourites.phtml">&raquo; Favourites</a></li>
			<li><a href="/keyquest/">&raquo; Key Quest</a></li>
						<li><a href="/habitarium/">&raquo; Habitarium</a></li>
						<li><a href="/dome/">&raquo; Battledome</a></li>
		</ul>
	</li>
	
	<li class="nav_image"><a href="/explore.phtml"><img src="http://images.neopets.com/themes/000_def_f65b1/navigation/explore.png" alt="" border="0" width="74" height="38"></a><ul class="dropdown">
			<li><a href="/explore.phtml">&raquo; Map of Neopia</a></li>
			<li><a href="/help/tutorial/index.phtml">&raquo; Tutorial</a></li>
						<li><a href="/neopedia.phtml">&raquo; Neopedia</a></li>
			<li><a href="/petcentral.phtml">&raquo; Pet Central</a></li>
			<li><a href="/calendar.phtml">&raquo; Calendar</a></li>
		</ul>
	</li>

	<li class="nav_image"><a href="/nf.phtml"><img src="http://images.neopets.com/themes/000_def_f65b1/navigation/news.png" alt="" border="0" width="57" height="38"></a><ul class="dropdown">
		<li><a href="/nf.phtml">&raquo; New Features</a></li>
		<li><a href="/comingsoon.phtml">&raquo; Coming Soon</a></li>
		<li><a href="/ntimes/index.phtml">&raquo; Neopian Times</a></li><li><a href="/stuff.phtml">&raquo; Merch News</a></li>		</ul>
	</li>

	
	<li class="nav_image"><a href="/community/index.phtml"><img src="http://images.neopets.com/themes/000_def_f65b1/navigation/community.png" alt="" border="0" width="97" height="38"></a><ul class="dropdown">
			<li><a href="/community/index.phtml">&raquo; Hub</a></li>
			<li><a href="/neoboards/index.phtml">&raquo; Neoboards</a></li>
						<li><a href="/contests.phtml">&raquo; Spotlights</a></li>
			<li><a href="/guilds/index.phtml">&raquo; Guilds</a></li>
		</ul>
	</li>
	<li class="nav_image"><a href="/objects.phtml"><img src="http://images.neopets.com/themes/000_def_f65b1/navigation/shops.png" alt="" border="0" width="61" height="38"></a><ul class="dropdown">
			<li><a href="/objects.phtml">&raquo; Neopia Central</a></li>
			<li><a href="/market.phtml?type=wizard">&raquo; Shop Wizard</a></li>
			<li><a href="/market.phtml?type=your">&raquo; Your Shop</a></li>
			<li><a href="/auctions.phtml">&raquo; Auctions</a></li>
			<li><a href="/island/tradingpost.phtml">&raquo; Trading Post</a></li>
			<li><a href="/bank.phtml">&raquo; Bank</a></li>
						<li><a href="/shopping/index.phtml">&raquo; Merchandise</a></li>
				</ul>
	</li>

	<style type="text/css">
		li.nav_image { margin-left: 0px; }
	</style>
	<li class="nav_image"><a href="http://ncmall.neopets.com/mall/index.phtml"><img src="http://images.neopets.com/themes/000_def_f65b1/navigation/ncmall.png" alt="" border="0" width="70" height="38"></a><ul class="dropdown">
			<li><a href="http://ncmall.neopets.com/mall/index.phtml">&raquo; Shop</a></li>
			<li><a href="http://nc.neopets.com/get-nickcash">&raquo; Get Neocash</a></li>
			<li><a href="http://nc.neopets.com/nickcash-cards">&raquo; Find Neocash Cards</a></li>
			<li><a href="http://nc.neopets.com/redeemnc">&raquo; Redeem Neocash Cards</a></li>
			<li><a href='http://nc.neopets.com/transactionlog/'>&raquo; Transaction Logs</a></li>
					</ul>
	</li>
		<style type="text/css">
		li.nav_image { margin-left: 0px; }
	</style>
		<li class="nav_image"><a href="http://nc.neopets.com/membership/"><img src="http://images.neopets.com/themes/000_def_f65b1/navigation/premium.png" alt="" border="0" width="96" height="38"></a><ul class="dropdown">

						<li><a href="http://nc.neopets.com/membership/">&raquo; Become a Member</a></li>
								</ul>
	</li>
</ul>
</td>
							<td id="nst">8:24:53 pm NST</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td colspan="3" height="3"><img src="http://images.neopets.com/transparent_spacer.gif" width="1" height="3" alt="" border="0"></td>
			</tr>
		</table>
	</div>

	<div id="content">
	<style>
		#templateLoginPopup {
			background-image: url("http://images.neopets.com/template/popups/login/bg.png");
		}
	</style>
<script type="text/javascript" src="http://images.neopets.com/js/dojo/1.4/dojo/dojo.xd.js"></script>
<script type="text/javascript">
templateLoginBumper = {
	dismissPopup: function () {
		dojo.byId('templateLoginBumper').style.display = 'none';
	}
};
</script>
<style type="text/css">
div#templateLoginBumper {
	position: absolute;
	width: 100%;
	height: 100%;
	z-index: 1000;
	display: none;
}
div#templateLoginBumper div.fbPopupFade {
	position: fixed;
	z-index: 1;
	top: 0px;
	left: 0px;
	background: black;
	opacity: 0.5;
	filter: alpha(opacity=50);
	width: 100%;
	height: 100%;
}
div#templateLoginBumper div.fbPopupBody {
	position: absolute;
	z-index: 2;
	top: 50px;
	left: 290px;
	width: 400px;
	height: 170px;
	background: url(http://images.neopets.com/template/popups/generic/bg.png) no-repeat;
	padding: 0px;
}
div#templateLoginBumper div.fbPopupClose {
	position: absolute;
	top: 0px;
	right: 0px;
	height: 36px;
	width: 36px;
	background: url(http://images.neopets.com/template/popups/generic/buttons/close-x.png);
	cursor: pointer;
}
div#templateLoginBumper div.fbPopupClose:hover {
	background-position: 0px -36px;
}
</style>
<div id="templateLoginBumper">
	<div class="fbPopupFade"></div>
	<div class="fbPopupBody">
		<img src="http://images.neopets.com/template/popups/generic/login-notice.png" style="position: absolute; top: 0px; left: 0px;">
		<div class="fbPopupClose" onclick="templateLoginBumper.dismissPopup();"></div>
		<div style="padding: 15px; padding-top: 40px;">
			<br><div style="text-align: center;">If you have a Facebook account, <a href="javascript:;" onclick="templateFB.loginSetCookie(true);">click here</a> to continue logging in.<br><br><br><span style="font-size: 0.8em;">If you don't have a Facebook account, <a href="javascript:;" onclick="templateLoginBumper.dismissPopup(); templateLogin.showPopup();">click here</a> to log in with your Neopets information.</span></div>		</div>
	</div>
</div>
<script type="text/javascript">
templateFB = {
	// Login

	showLoginBumper: true,

	login: function() {
				if (templateFB.showLoginBumper) {
			document.getElementById('templateLoginBumper').style.display = 'block';
		} else {
			templateFB.loginWindow();
		}
	},

	loginSetCookie: function() {
		var c_name = "fbLoginBumper";
		var value = "1";
		var exdays = 60;
		var exdate = new Date();
		exdate.setDate(exdate.getDate() + exdays);
		var c_value = escape(value) + ((exdays == null) ? "" : "; expires=" + exdate.toUTCString()) + "; path=/";
		document.cookie = c_name + "=" + c_value;
		templateFB.loginWindow();
	},

	loginWindow: function() {
		window.open('https://www.facebook.com/dialog/oauth?client_id=160659807342943&redirect_uri=http%3A%2F%2Fwww.neopets.com%2Ffacebook%2Flogin_redirect.phtml&state=9239dd0362fa801b8140b74e742a35ced164f71f&&scope=email,user_birthday,user_location,user_hometown,publish_stream&display=popup','','scrollbars=no,menubar=no,height=400,width=627,resizable=yes,toolbar=no,location=no,status=no');
	}

}
</script>
	<table width="100%" cellpadding="0" cellspacing="0" border="0">
		<tr>
<td align="center" class="sidebar" width="178"><a href="/login/index.phtml"><img src="http://images.neopets.com/template/signup/signup-banner.png" style="width: 160px; height: 120px; border: 0px;"></a>
<div style="padding-left: 9px; padding-top: 4px;"><div id='ad-160x600DivWrapper' class='ad_wrapper'>
	<p>ADVERTISEMENT</p>
	<div id='ad-160x600Div'>
				<script type='text/javascript' language='javascript'>
			KIDS.ads.refresh.placeAd('ad-160x600Div');
		</script>
			</div>
</div>
</div><div class='sidebarModule' style='margin-bottom: 7px;'>
    <table width='158' cellpadding='0' cellspacing='0' border='0' class='sidebarTable'>
        <tr>
            <td valign='middle' class='sidebarHeader medText'>Neopets on Facebook</td>
        </tr>
        <tr>
            <td class='neofriend' align='center'>
                <div style='width:158px;height:78px;overflow:hidden;'>
                                            <div style='position:relative;top: 7px;left: -31px;width:64px;height:64px;background-color: white; '>
                            <img src='http://images.neopets.com/np-facebook.jpg' width=64 height=64>
                        </div>
                        <div style='position:relative;width:60px;height:64px;left: 44px; top:-56px;'> 
                    	<script src='http://connect.facebook.net/en_GB/all.js#xfbml=1'></script>
		<fb:like layout="box_count" href="http%3A%2F%2Fwww.facebook.com%2Fneopets" show_faces="false" width="140" style="background-color:transparent;z-index:1;"></fb:like>
<div id="fb-decoy"><a href="#" onclick="javascript:setVisible('layer2',true)"></a></div>                </div>
            </td>
        </tr>
    </table>
</div>

<div class="sidebarModule" style="margin-bottom: 7px;">
	<table width="158" cellpadding="2" cellspacing="0" border="0" class="sidebarTable">
		<tr>
			<td valign="middle" class="sidebarHeader medText">Search Neopets</td>
		</tr>
		<tr>
			<td class="neofriend" align="center">
				<form onSubmit="search_handle(this);" style="padding-top: 4px; padding-bottom: 4px;">
					<input class="sf" type="text" name="q" maxlength="255" value="Enter search text..." style="width: 135px; color: #a5a5a5; padding: 2px;" onFocus="this.style.color='#000000'; if( this.value=='Enter search text...' ) { this.value=''; }" onBlur="if( this.value=='' ) { this.style.color='#A5A5A5'; this.value='Enter search text...'; }"><br>
					<input type="submit" value="Go!" class="sf">
					<input type="hidden" name="client" value="pub-9208792519293771">
					<input type="hidden" name="forid" value="1">
					<input type="hidden" name="ie" value="ISO-8859-1">
					<input type="hidden" name="oe" value="ISO-8859-1">
					<input type="hidden" name="safe" value="active">
					<input type="hidden" name="domains" value="www.neopets.com">
					<input type="hidden" name="cof" value="GALT:#FFFFFF;GL:1;DIV:#000066;VLC:FFFFFF;AH:center;BGC:FFFFFF;LBGC:000066;ALC:FFFFFF;LC:FFFFFF;T:000000;GFNT:000066;GIMP:000077;FORID:1">
					<input type="hidden" name="hl" value="en">
					<input type="hidden" name="s">
				</form>
			</td>
		</tr>
	</table>
</div>
</td>				<td class="content">
										<body onLoad="runSlideshow();">
<table width="800" cellspacing="0" cellpadding="0" border="0">
	<tr>
		<td align="left" valign="top" width="596" height="100%"><div class="contentModule" style="height: 100%">
			<table cellpadding="3" cellspacing="0" border="0" class="contentModuleTable">
				<tr>
					<td class="contentModuleHeader"><a href="/nf.phtml" class="moreLink"><b>more</b></a>  News Flash</td>
				</tr>

				<tr>
					<td align="left" valign="top" class="contentModuleContent">
						<script type="text/javascript">
	<!--
	// Marquee Slideshow
		var i = 0;
		var slideshow = null;
		var marqueeTimeDelay = 7000; 	// Seconds * 1000, of course
		var TOTALSLOTS = 4; 			// Total number of Marquee slots.  Will likely always be 4.

		// Swamp marquee
		function showMarquee( SLOT ) {

		// Which slot are we activating?
			var ACTIVESLOT = "marqueeSlot" + SLOT;
			var MARQUEEIMG = "marqueeImg" + SLOT;

		// Reset all div displays
			document.getElementById('marqueeImg1').style.display = "none";
			document.getElementById('marqueeImg2').style.display = "none";
			document.getElementById('marqueeImg3').style.display = "none";
			document.getElementById('marqueeImg4').style.display = "none";

			document.getElementById('marqueeSlot1').className = "marqueeSlot sf";
			document.getElementById('marqueeSlot2').className = "marqueeSlot sf";
			document.getElementById('marqueeSlot3').className = "marqueeSlot sf";
			document.getElementById('marqueeSlot4').className = "marqueeSlot sf";

		// Turn on the current section and swap out the image
			document.getElementById(ACTIVESLOT).className = "marqueeSlotOn sf";
			document.getElementById(MARQUEEIMG).style.display = "inline";

		// Stop the slideshow or hijinks will ensue
			stopSlideshow();
		};

		function runSlideshow(marqnum) {
			if(marqnum) i = marqnum;
			else i = i + 1;
			if( i > ( TOTALSLOTS ) ) {
				i = 1;
			};
			showMarquee( i );
			slideshow = setTimeout( 'runSlideshow()', marqueeTimeDelay );
		};

		function stopSlideshow() {
			clearTimeout(slideshow);
		};

	// Start the slideshow as soon as this loads!
		slideshow = setInterval("runSlideshow()", 1000);
	//-->
	</script><div style="height: 200px; width: 590px; overflow: hidden;">
		<table width="100%" cellpadding="0" cellspacing="1" border="0">
			<tr>
				<td width="440" height="200" valign="top">
					<div id="marqueeImg1" style="display: inline;">
						<a href="/track.php?id=23"><img src="http://images.neopets.com/homepage/marquee/illusen_day_2014.jpg" width="440" height="200" alt="" border="0" galleryimg="no"></a>
					</div>

					<div id="marqueeImg2" style="display: none;">
						<a href="/track.php?id=1982"><img src="http://images.neopets.com/homepage/marquee/ncmall_game_shenanigifts_teaparty.jpg" width="440" height="200" alt="" border="0" galleryimg="no"></a>
					</div>

					<div id="marqueeImg3" style="display: none;">
						<a href="/track.php?id=1803"><img src="http://images.neopets.com/homepage/marquee/grave_danger.jpg" width="440" height="200" alt="" border="0" galleryimg="no"></a>
					</div>

					<div id="marqueeImg4" style="display: none;">
						<a href="/track.php?id=653"><img src="http://images.neopets.com/homepage/marquee/giantomelette_2012.jpg" width="440" height="200" alt="" border="0" galleryimg="no"></a>
					</div>
				</td>

				<td width="150" height="200" valign="top">
					<table width="150" height="200" cellpadding="0" cellspacing="0" border="0">
						<tr style="border-bottom: 1px solid #FFFFFF;">
							<td valign="top" id="marqueeSlot1" class="marqueeSlotOn sf" style="border-bottom: 1px solid #FFFFFF;" onMouseOver="showMarquee('1'); document.body.style.cursor = 'pointer';" onMouseOut="runSlideshow(1); document.body.style.cursor = 'auto';" onClick="location.href='/track.php?id=23'"><div style="overflow: hidden;padding: 4px;">
								<a href="/track.php?id=23">Neopia Salutes Illusen!</a>
							</div></td>
						</tr>
						<tr>
							<td valign="top" id="marqueeSlot2" class="marqueeSlot sf" style="border-bottom: 1px solid #FFFFFF;" onMouseOver="showMarquee('2'); document.body.style.cursor = 'pointer';" onMouseOut="runSlideshow(2); document.body.style.cursor = 'auto';" onClick="location.href='/track.php?id=1982'"><div style="overflow: hidden;padding: 4px;">
								<a href="/track.php?id=1982">Shenanigifts</a>
							</div></td>
						</tr>
						<tr>
							<td valign="top" id="marqueeSlot3" class="marqueeSlot sf" style="border-bottom: 1px solid #FFFFFF;" onMouseOver="showMarquee('3'); document.body.style.cursor = 'pointer';" onMouseOut="runSlideshow(3); document.body.style.cursor = 'auto';" onClick="location.href='/track.php?id=1803'"><div style="overflow: hidden;padding: 4px;">
								<a href="/track.php?id=1803">Grave Danger</a>
							</div></td>
						</tr>
						<tr>
							<td valign="top" id="marqueeSlot4" class="marqueeSlot sf" onMouseOver="showMarquee('4'); document.body.style.cursor = 'pointer';" onMouseOut="runSlideshow(4); document.body.style.cursor = 'auto';" onClick="location.href='/track.php?id=653'"><div style="overflow: hidden;padding: 4px;">
								<a href="/track.php?id=653">Giant Omelette</a>
							</div></td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
	</div><div align="center" style="border-top: 1px solid #E4E4E4;">
		<table cellpadding="3" cellspacing="1" border="0">
			<tr>
				<td valign="middle" class="medText">
					<b>Players Online:</b> 10,868 | <b>Total Neopets:</b> 280,529,385 | <a href="/stockmarket.phtml"><b>Neodaq Index:</b></a> 2866 (<span style="color: green;">+51</span>)</td>
			</tr>
		</table>
	</div>
					</td>
				</tr></table>
		</div></td>
		<td width="7"><img src="http://images.neopets.com/transparent_spacer.gif" width="7" height="1" alt="" border="0"></td>
		<td align="left" valign="top" width="18" height="100%"><div class="contentModule" style="height: 100%">
			<table cellpadding="3" cellspacing="0" border="0" class="contentModuleTable">
				<tr>
					<td class="contentModuleHeaderAlt"> Notable Neopet</td>
				</tr>

				<tr>
					<td align="left" valign="top" class="contentModuleContent">
						<a href='/petlookup.phtml?pet=Chres'><div style='border: 1px solid #C9C9C9; margin: 10px 10px 0 10px; padding: 2px; text-align: center;'><IMG src="http://pets.neopets.com/cp/zlgqlkot/1/2.png" width="150" height="150" border="0" style=""></div><div style='text-align: center;'><b>Chres</b></div></a><br><div class='sf' style='background-color: #EFEFEF; padding: 2px; text-align: center;'>Owned by:<br><a href='/userlookup.phtml?user=denigrate'><b>denigrate</b></a></div>
					</td>
				</tr></table>
		</div></td>
	</tr>
</table>

<table width="800" cellspacing="0" cellpadding="0" border="0" style="margin-top: 7px;">
	<tr>
		<td align="left" valign="top">
					<div style="float: left; width: 230px; height: 326px; margin-right: 8px; padding: 0; border: 2px solid #C9C9C9;">
			<a href="/track.php?id=1980" target="_self"><img src="http://images.neopets.com/homepage/promo/2014/mall/2014_springshop.jpg" width="230" height="326" border="0"></a>
		</div>

	<table class='contentModule' cellpadding='0' cellspacing='0' border='0'><tr><td>
		<table class='contentModuleTable' cellpadding='0' cellspacing='0' border='0'>
			<tr><td colspan='2' class='contentModuleHeaderAlt' style='padding: 0 3px 0 3px'><a href="/nf.phtml" class="moreLinkAlt"><b>more</b></a>New Items</td></tr>
			<tr>
				<th class='newItemHeader medText' align='left'><a href='/nf.phtml'>&nbsp;<img src='http://images.neopets.com/homepage/neopoint_icon.gif' width='17' height='18' border='0' align='absmiddle'> Neopoints</a></th>
				<th class='newItemHeader medText' align='left'><a href='/mall/?type=7'>&nbsp;<img src='http://images.neopets.com/homepage/neocash_icon.gif' width='15' height='18' border='0' align='absmiddle'> Neocash</a></th>
			</tr>			<tr><td class='newItems medText' width='50%' height='50%' valign='top' align='center' style='padding: 5px; word-wrap: break-word;'><a href='/nf.phtml'><img src='http://images.neopets.com/items/plu_grarrl_illufan.gif' width='80' height='80' border='0' alt='This Grarrl is one big fan of Illusen!' title='This Grarrl is one big fan of Illusen!' class='neopointItem'></a><br><b>Illusen Fan
Grarrl
Plushie</b></td><td class='newItems medText' width='50%' height='50%' valign='top' align='center' style='padding: 5px; border: 2px solid #E4E4E4; border-width: 0 0 0 2px; word-wrap: break-word;'><a href='/mall/?type=7'><img src='http://images.neopets.com/items/mall_re_lightbulb.gif' width='80' height='80' border='0' alt='This unique device must only work under exact conditions...Note: This lamp will only be good for this years Control Panel Puzzle which ends on March 24 at 23:59:59 NST. Please read the Portal Activation Centre FAQ for more information before purchasing.' title='This unique device must only work under exact conditions...Note: This lamp will only be good for this years Control Panel Puzzle which ends on March 24 at 23:59:59 NST. Please read the Portal Activation Centre FAQ for more information before purchasing.' class='otherItem'></a><br><b>Moltaran
Filament
Lamp</b></td></tr>			<tr><td class='newItems medText' width='50%' height='50%' valign='top' align='center' style='padding: 5px; word-wrap: break-word;'><a href='/nf.phtml'><img src='http://images.neopets.com/items/gif_shrubbery_darkgreen.gif' width='80' height='80' border='0' alt='For that layered effect, place beside another shrubbery, only slightly higher!' title='For that layered effect, place beside another shrubbery, only slightly higher!' class='neopointItem'></a><br><b>Dark Green
Shrubbery</b></td><td class='newItems medText' width='50%' height='50%' valign='top' align='center' style='padding: 5px; border: 2px solid #E4E4E4; border-width: 0 0 0 2px; word-wrap: break-word;'><a href='/mall/?type=7'><img src='http://images.neopets.com/items/mall_gbmc_wheelbarrow.gif' width='80' height='80' border='0' alt='Flowers! Flowers for sale! Gifts can be quite fun, especially gift capsules! Open this capsule and receive a random item(s) worth 200 NC (or more if you are lucky)! This capsule also has a chance of awarding a very special limited edition gift box bonus item!' title='Flowers! Flowers for sale! Gifts can be quite fun, especially gift capsules! Open this capsule and receive a random item(s) worth 200 NC (or more if you are lucky)! This capsule also has a chance of awarding a very special limited edition gift box bonus item!' class='otherItem'></a><br><b>Flower
Barrow Gift
Box Mystery
Capsule</b></td></tr>
			<tr>
				<td align='right' valign='bottom' colspan='2' class='moreLinkBottom sf' style='padding: 3px'>
					<a href='/nf.phtml'><span class="pointer">&raquo</span> More Items</a>
				</td>
			</tr>
		</table>
	</td></tr></table>			<div style='clear: both; height: 0; margin-top: 7px; line-height: 0;'></div>
			<table width="100%" cellspacing="0" cellpadding="0" border="0">
				<tr>
					<td align="left" valign="top">
						<div>
							<div class="contentModule" style="height: 100%">
			<table cellpadding="3" cellspacing="0" border="0" class="contentModuleTable">
				<tr>
					<td class="contentModuleHeaderAlt"><a href="/nf.phtml" class="moreLinkAlt"><b>more</b></a>  Recent Winners</td>
				</tr>

				<tr>
					<td align="left" valign="top" class="contentModuleContent">
						
	<style type="text/css">
		.spotlight img {margin-right: 0px;}
	</style>	
	<table width="100%" height="100%" cellpadding="2" cellspacing="0" border="0">
		<tr><td width="50%" valign="top" style="background-color: #FFF;">
				<table width="100%" height="100%" cellpadding="2" cellspacing="0" border="0">
					<tr>
						<td class="spotlight" height="*" valign="top"><a href="/ul_spotlight.phtml"><img src="http://images.neopets.com/homepage/spotlights/6_mimiosa15_20140318.png" width="60" height="60" alt="" border="0" style="border: 1px solid #000000"></a></td>
						<td height="*" valign="top"><b class="indexTitle"><a href="/ul_spotlight.phtml">User Lookup Spotlight</a></b>
							<br /><br />
							<span class="medText">Time to prove your HTML mastery...</span>
						</td>
					</tr>
				</table>
			</td><td width="50%" valign="top" style="background-color: #EFEFEF;">
				<table width="100%" height="100%" cellpadding="2" cellspacing="0" border="0">
					<tr>
						<td class="spotlight" height="*" valign="top"><a href="/kreludorcaves/index.phtml"><img src="http://images.neopets.com/homepage/spotlights/23_peblis_20140319.png" width="60" height="60" alt="" border="0" style="border: 1px solid #000000"></a></td>
						<td height="*" valign="top"><b class="indexTitle"><a href="/kreludorcaves/index.phtml">Kreludor Caves Spotlight</a></b>
							<br /><br />
							<span class="medText">All of the best Kreludite is found in caves.</span>
						</td>
					</tr>
				</table>
			</td></tr><tr><td align="center" valign="bottom" class="medText" style="background-color: #FFF;">
			Winner: <a href="/userlookup.phtml?user=mimiosa15"><b class="spotlightWinner"><a href="/userlookup.phtml?user=mimiosa15">mimiosa15</a></b></a><br /><br />
		</td><td align="center" valign="bottom" class="medText" style="background-color: #EFEFEF;">
			Winner: <a href="/userlookup.phtml?user=peblis"><b class="spotlightWinner"><a href="/userlookup.phtml?user=peblis">peblis</a></b></a><br /><br />
		</td></tr><td width="50%" valign="top" style="background-color: #EFEFEF;">
				<table width="100%" height="100%" cellpadding="2" cellspacing="0" border="0">
					<tr>
						<td class="spotlight" height="*" valign="top"><a href="/homespotlight.phtml"><img src="http://images.neopets.com/homepage/spotlights/4_cilicia_prez_20140320.png" width="60" height="60" alt="" border="0" style="border: 1px solid #000000"></a></td>
						<td height="*" valign="top"><b class="indexTitle"><a href="/homespotlight.phtml">Neohome Spotlight</a></b>
							<br /><br />
							<span class="medText">Much fancier than your average abode.</span>
						</td>
					</tr>
				</table>
			</td><td width="50%" valign="top" style="background-color: #FFF;">
				<table width="100%" height="100%" cellpadding="2" cellspacing="0" border="0">
					<tr>
						<td class="spotlight" height="*" valign="top"><a href="/spotlight.phtml"><img src="http://images.neopets.com/homepage/spotlights/1_kanpai_20140317.png" width="60" height="60" alt="" border="0" style="border: 1px solid #000000"></a></td>
						<td height="*" valign="top"><b class="indexTitle"><a href="/spotlight.phtml">Neopet Spotlight</a></b>
							<br /><br />
							<span class="medText">Every Neopet deserves 15 minutes of fame.</span>
						</td>
					</tr>
				</table>
			</td></tr><tr><td align="center" valign="bottom" class="medText" style="background-color: #EFEFEF;">
			Winner: <a href="/userlookup.phtml?user=cilicia_prez"><b class="spotlightWinner"><a href="/userlookup.phtml?user=cilicia_prez">cilicia_prez</a></b></a><br /><br />
		</td><td align="center" valign="bottom" class="medText" style="background-color: #FFF;">
			Winner: <a href="/userlookup.phtml?user=kanpai"><b class="spotlightWinner"><a href="/userlookup.phtml?user=kanpai">kanpai</a></b></a><br /><br />
		</td></tr></table>
					</td>
				</tr></table>
		</div>						</div>
					</td>
				</tr>
			</table>

		</td>
		<td width="7"><img src="http://images.neopets.com/transparent_spacer.gif" width="7" height="1" alt="" border="0"></td>
		<td align="left" valign="top" width="304">
<div class="adBox sf" style="margin-top:2px;width:100%;"><div id='ad-300x250Div-atfWrapper' class='ad_wrapper_fixed'>
	<p>ADVERTISEMENT</p>
	<div id='ad-300x250Div-atf'>
				<script type='text/javascript' language='javascript'>
			KIDS.ads.refresh.placeAd('ad-300x250Div-atf');
		</script>
			</div>
</div>
</div>			<div width="100%" style="margin-top:7px;" >
				<div class="contentModule" style="height: 100%">
			<table cellpadding="3" cellspacing="0" border="0" class="contentModuleTable">
				<tr>
					<td class="contentModuleHeaderAlt"><a href="/games/arcade.phtml" class="moreLinkAlt"><b>more</b></a>  Latest Games</td>
				</tr>

				<tr>
					<td align="left" valign="top" class="contentModuleContent">
						
	<div class="latestGamesBox"><a href="/track.php?id=294"><img class="latestGamesImg" src="http://images.neopets.com/games/clicktoplay/tm_1341.gif" width="60" height="60" border="0" align="left" style="border: 1px solid #000000; margin-right: 4px;">
			<b>Petpet Park (Ad)</b></a><br />
			<span class="medText">Play Petpet Park!</span><br clear="all" /><br /><a href="/shenkuu/neggcave/index.phtml"><img class="latestGamesImg" src="http://images.neopets.com/games/clicktoplay/tm_1351.gif" width="60" height="60" border="0" align="left" style="border: 1px solid #000000; margin-right: 4px;">
			<b>Negg Cave</b></a><br />
			<span class="medText">Negg puzzles!</span><br clear="all" /><br /><a href="/games/play.phtml?game_id=1347"><img class="latestGamesImg" src="http://images.neopets.com/games/clicktoplay/tm_1347.gif" width="60" height="60" border="0" align="left" style="border: 1px solid #000000; margin-right: 4px;">
			<b>Assignment 53</b></a><br />
			<span class="medText">Rescue stranded Alien Aishas from dangerous planets.</span><br clear="all" /><br /></div>
					</td>
				</tr><tr>
				<td align="right" valign="bottom" class="moreLinkBottom sf">
					<a href="/games/arcade.phtml"><span class="pointer">&raquo</span> More Games</a>
				</td>
			</tr></table>
		</div>			</div>
		</td>
	</tr>
</table>
<!--- PAGEOK -->

<br clear="all">

									</td>
			</tr>
		</table>
	</div>
	<div id="footer">
		<img src="http://images.neopets.com/themes/000_def_f65b1/rotations/5.png" width="200" height="170" alt="" border="0" class="footerNifty">
		<table width="100%" cellpadding="0" cellspacing="0" border="0" class="footer">
			<tr>
				<td width="175" align="left"><a href="/index.phtml"><img src="http://images.neopets.com/transparent_spacer.gif" width="156" height="46" alt="Neopets.com" border="0"></a></td>
				<td align="left"><br>
					<table cellpadding="0" cellspacing="0" border="0">
						<tr>
							<!-- Search -->
							<td class="sf" valign="middle">
								<form onSubmit="javascript: search_handle(this);">
								<table cellpadding="0" cellspacing="0" border="0">
									<tr>
										<td class="footerForm sf" valign="middle"><b>Search Neopets:</b>&nbsp;</td>
										<td valign="middle"><input class="sf" type="text" name="q" size="25" maxlength="255" value="Enter search text..." style="color: #a5a5a5; padding: 2px;" onFocus="this.style.color='#000000'; if( this.value=='Enter search text...' ) { this.value=''; }" onBlur="if( this.value=='' ) { this.style.color='#A5A5A5'; this.value='Enter search text...'; }">&nbsp;</td>
										<td valign="middle"><input type="submit" value="Go!" class="sf">
										<input type="hidden" name="client" value="pub-9208792519293771">
										<input type="hidden" name="forid" value="1">
										<input type="hidden" name="ie" value="ISO-8859-1">
										<input type="hidden" name="oe" value="ISO-8859-1">
										<input type="hidden" name="safe" value="active">
										<input type="hidden" name="domains" value="www.neopets.com">
										<input type="hidden" name="cof" value="GALT:#FFFFFF;GL:1;DIV:#000066;VLC:FFFFFF;AH:center;BGC:FFFFFF;LBGC:000066;ALC:FFFFFF;LC:FFFFFF;T:000000;GFNT:000066;GIMP:000077;FORID:1">
										<input type="hidden" name="hl" value="en">
										<input type="hidden" name="s">
										</td>
									</tr>
								</table>
								</form>
							</td>
							<td width="15">&nbsp;</td>
							<!-- Language -->
							<td class="sf" valign="top">
								<table cellpadding="0" cellspacing="0" border="0">
									<tr>
										<td class="footerForm sf" valign="middle"><form method="post"><b>Select Language:</b>&nbsp;</td>
										<td valign="top">
											<select name="lang" class="sf"><option value="en" selected>English</option><option value="nl">Nederlands</option><option value="pt">Português</option><option value="de">Deutsch</option><option value="fr">Français</option><option value="it">Italiano</option><option value="es">Español</option><option value="ch">简体中文</option><option value="zh">繁體中文</option><option value="ja">日本語</option><option value="ko">한국어</option></select>&nbsp;</td>
										<td valign="top"><input type="submit" value="Go!" class="sf"></form></td>
									</tr>
								</table>
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td colspan="2" class="copyright">
					
					<a href='/privacy.phtml'><img src='http://images.neopets.com/themes/000_def_f65b1/navigation/privacypolicy.png' width='81' height='18' border='0' alt='privacypolicy'></a>
<img src='http://images.neopets.com/themes/000_def_f65b1/navigation/divider.png' width='4' height='16' border='0'>
<a href='/safetytips.phtml'><img src='http://images.neopets.com/themes/000_def_f65b1/navigation/safetytips.png' width='61' height='18' border='0' alt='safetytips'></a>
<img src='http://images.neopets.com/themes/000_def_f65b1/navigation/divider.png' width='4' height='16' border='0'>
<a href='/contact.phtml'><img src='http://images.neopets.com/themes/000_def_f65b1/navigation/contactus.png' width='60' height='18' border='0' alt='contactus'></a>
<img src='http://images.neopets.com/themes/000_def_f65b1/navigation/divider.png' width='4' height='16' border='0'>
<a href='/aboutus.phtml'><img src='http://images.neopets.com/themes/000_def_f65b1/navigation/aboutus.png' width='50' height='18' border='0' alt='aboutus'></a>
<img src='http://images.neopets.com/themes/000_def_f65b1/navigation/divider.png' width='4' height='16' border='0'>
<a href='/refer/index.phtml'><img src='http://images.neopets.com/themes/000_def_f65b1/navigation/referral.png' width='98' height='18' border='0' alt='referral'></a>
<img src='http://images.neopets.com/themes/000_def_f65b1/navigation/divider.png' width='4' height='16' border='0'>
<a href='/help.phtml'><img src='http://images.neopets.com/themes/000_def_f65b1/navigation/help.png' width='25' height='18' border='0' alt='help'></a>
<img src='http://images.neopets.com/themes/000_def_f65b1/navigation/divider.png' width='4' height='16' border='0'>
<a href='/adchoices.phtml'><img src='http://images.neopets.com/themes/000_def_f65b1/navigation/ad-choices.png' width='75' height='18' border='0' alt='ad-choices'></a>
<script type="text/javascript">
<!--


function setVisible(obj) {
	obj = document.getElementById(obj);
	obj.style.visibility = (obj.style.visibility == 'visible') ? 'hidden' : 'visible';
	obj.style.zIndex = '9999';
	document.getElementById('dimBackground').style.visibility = (document.getElementById('dimBackground').style.visibility == 'visible') ? 'hidden' : 'visible';
    if(document.getElementById('fb-decoy') != null) {
        document.getElementById('fb-decoy').style.zIndex = (document.getElementById('fb-decoy').style.zIndex == '9999') ? '-1' : '9999';
    }

    if(document.getElementById('kq-body-content') != null) {
        document.getElementById('kq-body-content').style.visibility = (document.getElementById('kq-body-content').style.visibility == 'hidden') ? 'visible' : 'hidden';
    }

    if(document.getElementById('navigation') != null) {
        document.getElementById('navigation').style.visibility = (document.getElementById('navigation').style.visibility == 'hidden') ? 'visible' : 'hidden';
    }
}


function registerAutoBumper() {
	jQuery('a.auto_bumper').click( function() {
		window.auto_bumper_last = jQuery(this);
		setVisible('auto_bumper');
		return false;
	});
}

function autoBumperGo() {
	window.open(window.auto_bumper_last.attr('href'),'auto_bumper','width=800,height=800,resizable=yes,scrollbars=yes,toolbar=yes');
	setVisible('auto_bumper', true);
}

if(typeof jQuery == 'undefined') {
	window.onload = function(){
		registerAutoBumper();
	}
}
else {
	jQuery(document).ready( function() { registerAutoBumper(); } );
}



if(document.getElementById('fb-decoy') != null) {
    document.getElementById('fb-decoy').style.zIndex = '9999';
}
-->
</script>
<style type="text/css">
.bumper {
    position: fixed;
    top:50%;
    left:50%;
    right:50%;
    margin-top:-10%;
    margin-left:-20%;
    visibility: hidden;
    background: url('http://images.neopets.com/help/bumper/bg.png');
    width: 580px;
    height: 300px;
    padding: 20px;
    font-family: Verdana, Arial, Helvetica, sans-serif;
    font-size: 9pt;
    background-repeat: no-repeat;
    z-index:9200;
}

.bumper p {
	display:block;
	position:absolute;
	left:20px;
	top:50px;
	width:385px;
	font-size:12px;
	font-family: Verdana, Arial, Helvetica, sans-serif;
	margin:0px; 
	padding:0px;
}

.bumper div, .bumper p {
	color: black;
}
	
#open {
    position:absolute;
    top:118px;
	background: url('http://images.neopets.com/help/bumper/buttons/yes.png');
	width: 177px;
	height: 137px;
	overflow:hidden;
	text-align: center;
	cursor: pointer
}

#close {
    position:absolute;
    top:118px;
    left:220px;
	background: url('http://images.neopets.com/help/bumper/buttons/no.png');
	width: 177px;
	height: 137px;
	overflow:hidden;
	cursor: pointer
}

#close:hover {
   background: url('http://images.neopets.com/help/bumper/buttons/no.png') repeat 0 -137px;
}

#open:hover {
   background: url('http://images.neopets.com/help/bumper/buttons/yes.png') repeat 0 -137px;
} 

#a:hover .close {
    background: url('http://images.neopets.com/help/bumper/buttons/no.png') repeat 0 -137px;
}

#close-text {
    position: absolute;
top:68px;    left:7px;
    width: 160px;
    height:75px;
    text-align: center;
    font-family: Arial, Helvetica, sans-serif;
    font-weight: bold;
    font-size: 8pt;
}

#open-text {
    position: absolute;
    top:68px;
    left:7px;
    width: 160px;
    height:75px;
    text-align: center;
    font-family: Arial, Helvetica, sans-serif;
    font-weight: bold;
    font-size: 8pt;
}

#dimBackground {
    position:fixed;
	width: 100%;
	height: 100%;
	background: url(http://images.neopets.com/dark-semi-trans.png);
	left: 0;
	top: 0;
	z-index: 998;
    visibility:hidden;
}

#fb-decoy {
    display:inline-block;
    position:relative;
    right:0px;
    bottom:21px;
    height:30px;
    width:60px;
    background-color:white;
    z-index:9;
}

#fb-decoy a {
    position:absolute;
    top:0px;
    left:0px;
    height:20px;
    width:45px;
    background-image:url("http://images.neopets.com/np-facebook-like.png");
    background-position:0px 0px;
    background-repeat:no-repeat;
    z-index:999999;
}

#fb-decoy a:hover {
    text-align:left;
    background-position:0px -20px;
}

.layer-msg {
    display:inline;
    position:absolute;
    top:252px;
    left:27px;
    width:370px;
}

#facebook_games { 
position:relative;
display:inline-block; 
top:-21px;
left:115px;
text-align:right; 
width:144px;
height:15px;
}

.fb_iframe_widget iframe {
display:block;
left:0px;
}

#facebook_games #fb-decoy {
display:inline-block;
left:-94px;
width:46px;
height:21px;
}

@media screen and (-webkit-min-device-pixel-ratio:0){
    #facebook_games #fb-decoy {
        bottom:22px;
        left:-98px;
    }
}

#hab-main #facebook_games {
float:left;
text-align:right;
height:25px;
margin-top:2px;
}

#hab-main #facebook_games #fb-decoy {
float:left;
left:0px;
}

.fb-like-button #fb-decoy {
display:block;
height:21px;
width:45px;
}

#hab-logo {
clear:both;
display:block;
position:relative;
right:2px;
bottom:4px;
}

#gamesHeader #facebook_games {
margin-left:0px;
height:23px;
top:2px;
}

#gamesHeader #fb-decoy {
top:-35px;
left:0px;
float:left;
height:21px;
}

.fb_edge_widget_with_comment span.fb_edge_comment_widget iframe.fb_ltr {
display:none;
}

.connect_comment_widget .nub {
display:none;
}
</style>
<div id="dimBackground"></div>
<div class="bumper" id="auto_bumper">
    <img src="http://images.neopets.com/help/bumper/headers/leaving-neopia.png" alt="Heads Up! You're about to leave Neopia!" />
    <br />
    <p>You've clicked on a link that will take you outside of<BR> Neopets.com. We do not control your destination's website,<BR> so its rules, regulations, and Meepit defense systems will be<BR> different! Are you sure you'd like to continue?</p>
    <br><br>
    <div id="open" onclick="autoBumperGo()">
        <div id="open-text">
           It is a journey<BR>I must face...alone.<br>*dramatic music* 
        </div>
    </div>
    <div id="close-hover" style="display: none;"></div>
    <div id="close" onclick="javascript:setVisible('auto_bumper',true)">
        <div id="close-text" >
            I want to stay on Neopets,<BR>where the dangers of<br>Meepit invasion<br> are taken seriously.
        </div>
    </div></div><div class="bumper" id="layer1">
    <img src="http://images.neopets.com/help/bumper/headers/leaving-neopia.png" alt="Heads Up! You're about to leave Neopia!" />
    <br />
    <p>You've clicked on a link that will take you outside of<BR> Neopets.com. We do not control your destination's website,<BR> so its rules, regulations, and Meepit defense systems will be<BR> different! Are you sure you'd like to continue?</p>
    <br><br>
    <div id="open" onclick="window.open('http://www.facebook.com/neopets','Facebook','width =800,height=800, resizable=yes,scrollbars=yes,toolbar=yes');location.href='javascript:setVisible(\'layer1\',true)'">
        <div id="open-text">
           It is a journey<BR>I must face...alone.<br>*dramatic music* 
        </div>
    </div>
    <div id="close-hover" style="display: none;"></div>
    <div id="close" onclick="location.href='javascript:setVisible(\'layer1\',true)'">
        <div id="close-text" >
            I want to stay on Neopets,<BR>where the dangers of<br>Meepit invasion<br> are taken seriously.
        </div>
    </div></div><div class="bumper" id="layer2">
    <img src="http://images.neopets.com/help/bumper/headers/leaving-neopia.png" alt="Heads Up! You're about to leave Neopia!" />
    <br />
    <p>You've clicked on a link that will take you outside of<BR> Neopets.com. We do not control your destination's website,<BR> so its rules, regulations, and Meepit defense systems will be<BR> different! Are you sure you'd like to continue?</p>
    <br><br>
    <div id="open" onclick="document.getElementById('fb-decoy').style.visibility='hidden';location.href='javascript:setVisible(\'layer2\',true)'">
        <div id="open-text">
           It is a journey<BR>I must face...alone.<br>*dramatic music* 
        </div>
    </div>
    <div id="close-hover" style="display: none;"></div>
    <div id="close" onclick="location.href='javascript:setVisible(\'layer2\',true)'">
        <div id="close-text" >
            I want to stay on Neopets,<BR>where the dangers of<br>Meepit invasion<br> are taken seriously.
        </div>
    </div>
                    <div class="layer-msg" style="clear:both;">
                        <img src="http://images.neopets.com/help/bumper/headers/log-in-to-facebook.png" alt="/help/bumper/headers/log-in-to-facebook" />
                    </div></div><div style='position:absolute;right:257px;top:52px;overflow:hidden;'><img src ='http://images.neopets.com/themes/000_def_f65b1/navigation/follow-us-on.png'><a href="javascript:setVisible('layer1',true)"><img src ='http://images.neopets.com/facebook-icon.png' border=0><a/></div>					<br>
					<div class='sf' style='width: 775px;'>
						<div style="position: relative; height: 42px; width: 300px;"></div>						NEOPETS and all related indicia are trademarks of <a href="/aboutus.phtml"><b>Neopets, Inc.</b></a>, &copy; 1999-2014. &reg; denotes Reg. USPTO. All rights reserved. Use of this site signifies your acceptance of the <a href='/terms.phtml'><b>Terms of Use</b></a>. <a href="/privacy.phtml">Your California Privacy Rights</a>
						
						
					</div>
				</td>
			</tr>
		</table>
	</div>


<script language="JavaScript">
function tzCook() { 
	var today = new Date();
	var expire = new Date();
	expire.setTime(today.getTime() + 3600000*24*30);
	var cstr = "_tz="+escape(today.getTimezoneOffset()) + ";expires="+expire.toGMTString() + ";path=/;domain=.neopets.com;";
	document.cookie = cstr;
}
tzCook();
</script>
</div>
<div style="display: none" id="logout_nchub"></div>
<div style="display: none" id="logout_parature"></div>
</body>
</html>
