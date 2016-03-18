<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<tiles:insertDefinition name="page.mobilite.layout">
	<tiles:putAttribute name="page.body" value="/mobilite/poste/circulaire/hens/suiviPostesCirculaireHens-body.jsp" />
	<tiles:putAttribute name="pageName" value="sr_rop04" />
	<tiles:putAttribute name="box.title" value="Suivi des postes affectation ponctuelle HENS" />
	<tiles:putAttribute name="pageTitle" value="" />
	<tiles:putAttribute name="controllerSuiviPostesCiculaireHens" value="suiviPostesAffectationPonctuelleLC" />
	<tiles:putAttribute name="titreListe" value="Liste des postes affectation ponctuelle" />
</tiles:insertDefinition>