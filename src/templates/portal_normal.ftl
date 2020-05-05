<!DOCTYPE html>

<#include init />

<html class="${root_css_class}" dir="<@liferay.language key="lang.dir" />" lang="${w3c_language_id}">

<head>
	<title>${the_title} - ${company_name}</title>

	<meta content="initial-scale=1.0, width=device-width" name="viewport" />
	<link rel="icon" href="${images_folder}/favicon.png" />
	<meta http-equiv="Cache-Control" content="no-cache, no-store, must-revalidate" />
    <meta http-equiv="Pragma" content="no-cache" />
    <meta http-equiv="Expires" content="0" />
	<meta http-equiv="x-ua-compatible" content="ie=edge">
	<meta�http-equiv="X-UA-Compatible"�content="IE=EmulateIE7"�/>

	<#if !permissionChecker.isOmniadmin()>
	<#assign 
	css_class = css_class?replace("has-control-menu ", "") />
	<#assign
    css_class = css_class?replace("open", "closed") /> 
	</#if> 	
	

<@liferay_util["include"] page=top_head_include />

<link rel="stylesheet" type="text/css" href="https://avagoext.okta.com/assets/js/sdk/okta-signin-widget/2.6.0/css/okta-sign-in.min.css">
<link rel="stylesheet" href="https://avagoext.okta.com/assets/js/sdk/okta-signin-widget/2.6.0/css/okta-theme.css" />
<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-typeahead/2.10.4/jquery.typeahead.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jstree/3.2.1/themes/default/style.min.css" />
<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css" />
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="https://support.broadcom.com/broadcom-theme/v1/app.css" />
<link href="https://cdnjs.cloudflare.com/ajax/libs/jquery-tagsinput/1.3.6/jquery.tagsinput.min.css" rel="stylesheet" type="text/css">
	<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!--[if lt IE 9]>
	<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
	<script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
	<![endif]--> 

	
</head>

<body class="${css_class}">

<@liferay_ui["quick-access"] contentId="#main-content" />

<@liferay_util["include"] page=body_top_include />

<#if permissionChecker.isOmniadmin()>
	<@liferay.control_menu />
</#if> 

<div class="container-fluid" id="wrapper">
	<header id="banner" role="banner">
		<!--<div id="heading">
			<h1 class="site-title">
				<a class="${logo_css_class}" href="${site_default_url}" title="<@liferay.language_format arguments="${site_name}" key="go-to-x" />">
					<img alt="${logo_description}" height="${site_logo_height}" src="${site_logo}" width="${site_logo_width}" />
				</a>

				<#if show_site_name>
					<span class="site-name" title="<@liferay.language_format arguments="${site_name}" key="go-to-x" />">
						${site_name}
					</span>
				</#if>
			</h1>
		</div> -->
		
		<!-- <#include "${full_templates_path}/header.ftl" />

		<#if !is_signed_in>
			<a data-redirect="${is_login_redirect_required?string}" href="${sign_in_url}" id="sign-in" rel="nofollow">${sign_in_text}</a>
		</#if> -->
		
		<@liferay_portlet["runtime"]
            portletName="Broadcom_Navigation"
        /> 

		<!-- <#if has_navigation && is_setup_complete>
			<#include "${full_templates_path}/navigation.ftl" />
		</#if> -->
	</header>

	<section id="content" class="container">
		<h1 class="hide-accessible">${the_title}</h1>

		

		<#if selectable>
			<@liferay_util["include"] page=content_include />
		<#else>
			${portletDisplay.recycle()}

			${portletDisplay.setTitle(the_title)}

			<@liferay_theme["wrap-portlet"] page="portlet.ftl">
				<@liferay_util["include"] page=content_include />
			</@>
		</#if>
		
	</section>

	<footer id="footer" role="contentinfo">
		<#include "${full_templates_path}/footer.ftl" />
	</footer>
</div>

<@liferay_util["include"] page=body_bottom_include />

<@liferay_util["include"] page=bottom_include />

<!-- inject:js -->
<script>
    define._amd = define.amd;
    define.amd = false;
</script> 	


<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js" integrity="sha256-T0Vest3yCU7pafRw9r+settMBX6JkKN06dqBnpQ8d30=" crossorigin="anonymous"></script>
<script src="${javascript_folder}/ays-beforeunload-shim.js"></script>
<script src="${javascript_folder}/sweetalert.min.js"></script>
<script src="${javascript_folder}/multiselect.js"></script>
<script src="${javascript_folder}/okta-sign-in.min.js"></script>
<script src="${javascript_folder}/jstree.min.js"></script>
<script src="${javascript_folder}/jquery.are-you-sure.js"></script>
<script src="${javascript_folder}/core.js"></script>
<script src="${javascript_folder}/parsley.js"></script>
<script src="${javascript_folder}/jquery.typeahead.js"></script>
<script src="${javascript_folder}/jquery.richtext.min.js"></script>
<script src="https://support.broadcom.com/broadcom-theme/v1/app.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-tagsinput/1.3.6/jquery.tagsinput.min.js"></script> 



<script>
    define.amd = define._amd;
</script>
<!-- endinject -->

</body>

</html>