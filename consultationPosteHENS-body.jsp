<%@ taglib uri="http://java.sun.com/jsf/html" prefix="html"%>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="core"%>
<%@ taglib uri="http://agriculture.gouv.fr/orion/jsf/html"
	prefix="orion"%>
<%@ taglib uri="http://agriculture.gouv.fr/orion/jsf/html/async"
	prefix="orion-async"%>


<orion:form controllerRef="creationPosteCirculaireHensFC"
	type="fr.gouv.agriculture.dag.agorha.business.view.mobilite.poste.creation.CreationPosteCirculaireHensFormView"
	container="${container}">

		<html:panelGrid columns="2" cellpadding="0" cellspacing="0" style="margin-top:10px;">

			<orion:outputText name="numProvisoire" label="Numéro provisoire : " style="width:300px; margin-left:10px" 
				rendered="#{${container}.indicateurHorsCirculaire=='circulaire'}"/>

			<orion:outputText name="etatPoste.libelle" label="Etat poste :" 
				rendered="#{${container}.indicateurHorsCirculaire=='circulaire'}"/>

		</html:panelGrid>

		<html:panelGrid columns="1" cellpadding="0" cellspacing="0" >
			<orion:outputText name="etatAdditif" label="Etat additif : "
				rendered="#{${container}.indicateurHorsCirculaire=='circulaire'}" style="margin-left:10px"/>

			<orion:outputText name="structAdmNumLibelle"
				label="Structure administrative : "  style="margin-left:10px"/>

			<orion:outputText name="structOpNumLibelle"
				label="Structure opérationnelle : " style="margin-left:10px"/>

			<orion:outputText 
				name="secteurBudgetaire.code" label="Secteur budgétaire : "  style="margin-left:10px"/>

			<orion:outputText name="codeLibelleMAPS" label="MAPS : " style="margin-left:10px"
				id="codeLibelleMapsID"  />
		</html:panelGrid>

		<html:panelGrid columns="2" cellpadding="0" cellspacing="0" >

			<orion:outputText name="localisation" label="Localisation : "  style="width:300px; margin-left:10px" />

			<orion:outputText name="priorite" label="Priorité :"  />

			<orion:comboBox controllerRef="categorieMobiliteValideCBL"
				nullable="true" valueStyle="width:150px" name="categorieMobilite"
				label="Type de catégorie : " styleClass="combo-style350" style="width:300px; margin-left:10px"
				displayProperty="codeLibelleTypeCategorie" disabled="true"
				 />

			<orion:comboBox controller="filiereCBL" nullable="true"
				valueStyle="width:150px" name="filiere" label="Filière : "
				styleClass="combo-style350" displayProperty="codeLibelleFiliere" 
				disabled="true" />

			<orion:comboBox controllerRef="cotationValideCBL" nullable="true"
				valueStyle="width:150px" name="cotation" style="width:300px"
				label="Classement parcours pro. : " styleClass="combo-style350"
				displayProperty="codeLibelleCotation" disabled="true" labelStyle="width:160px;"
				 />



			<orion:outputText name="quotite" label="Quotité :"  />
		</html:panelGrid>


		<html:panelGrid columns="1" cellspacing="0" cellpadding="0">

			<orion:outputText name="codeLibelleFonction" style="margin-left:10px"
				label="Fonction : "   />


			<orion:comboBox controllerRef="vacancePosteValideCBL" nullable="true"
				valueStyle="width:300px" name="vacancePoste" label="Vacance : "
				styleClass="combo-style350" 
				displayProperty="codeLibelleVacancePoste" disabled="true" style="margin-left:10px"/>

			<orion:outputText name="imputBudgetaireValue" 
				label="Imputation budgétaire : " style="margin-left:10px"
				 />
				 
			<orion:outputText name="codeLibelleAgent" 
				label="Agent à remplacer : " style="margin-left:10px"
				 />
		</html:panelGrid>


		
		<html:panelGrid columns="1" cellspacing="0" cellpadding="0" style="margin-bottom:10px;">

			<orion:textArea name="profil" valueStyle="width:300px"
				label="Profil :" disabled="true"  style="margin-left:10px"/>


			<orion:textArea name="motifParution" valueStyle="width:300px" 
				label="Motif parution :"  disabled="true" style="margin-left:10px"/>


			<orion:textArea name="motifParutionIntSect" valueStyle="width:300px" 
				rendered="#{creationPosteCirculaireHensFC.formModel.object.flagMotifParutionConsultation}"
				disabled="true" style="margin-left:10px"
				label="Motif parution : <br /> (interne secteur)" />

		</html:panelGrid>

	
</orion:form>
