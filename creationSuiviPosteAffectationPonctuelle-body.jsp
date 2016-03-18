<%@ taglib uri="http://java.sun.com/jsf/html" prefix="html"%>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="core"%>
<%@ taglib uri="http://agriculture.gouv.fr/orion/jsf/html"
	prefix="orion"%>



<orion:form controllerRef="creationSuiviPosteAffectationPonctuelleFC"
	type="fr.gouv.agriculture.dag.agorha.business.view.mobilite.poste.affectation.ponctuelle.GestionPosteAffectationPonctuelleFormView">
	
	<html:panelGrid columns="2" cellpadding="0" cellspacing="0"
		rendered="#{creationSuiviPosteAffectationPonctuelleFC.formModel.object.poste.transient}">
			
		<orion:comboBox controllerRef="periodeCampagneCBL" nullable="true"
			valueStyle="width:150px" name="periodeCampagne"
			label="Libellé campagne :" styleClass="combo-style350"
			displayProperty="codeLibelle" required="true" />

		<orion:inputText name="anneeCampagne" label="Année campagne :" size="10" maxLength="4" style="margin-left:150px;"
			required="true" />
	</html:panelGrid>
	<html:panelGrid columns="1" cellpadding="0" cellspacing="0"
		rendered="#{creationSuiviPosteAffectationPonctuelleFC.formModel.object.poste.transient}">
		<orion:comboBox controllerRef="secteurMobiliteCBL" nullable="false"
			valueStyle="width:380px" name="secteurMobilite"
			label="Secteur de mobilité :" styleClass="combo-style350"
			displayProperty="codeLibelle" required="true" />
	</html:panelGrid>
	
	<html:panelGrid columns="2" cellpadding="0" cellspacing="0"
		rendered="#{!creationSuiviPosteAffectationPonctuelleFC.formModel.object.poste.transient}">
		<orion:outputText name="poste.numeroPoste" label="N° poste SIRH :" />

		<orion:outputText name="periodeAnneeCampagne" label="Campagne :" />
	</html:panelGrid>
	<html:panelGrid columns="1" cellpadding="0" cellspacing="0"
		rendered="#{!creationSuiviPosteAffectationPonctuelleFC.formModel.object.poste.transient}">
		<orion:outputText name="codeLibelleSecteurMobilite" label="Secteur de mobilité :" />
	</html:panelGrid>
	
	<html:panelGrid columns="1" cellpadding="0" cellspacing="0">
		<orion:outputDate name="dateDeclaration" label="Date de déclaration :"
			style="margin-top:5px" />
	</html:panelGrid>

	<html:panelGrid columns="2" cellspacing="0" cellpadding="0"
		rendered="#{creationSuiviPosteAffectationPonctuelleFC.formModel.object.poste.transient}">
		<orion:inputText name="numeroStructureAdministrative" size="10" maxLength="10"
			required="true" label="Struct. administrative :">
			<orion:showPopUpButton url="/faces/commun/aides/structure.jsp"
				id="numeroStructureAdministrative" text="" width="700" height="780" />
			<orion-async:asyncOnChange
				refresh="structureAdministrativeLibelleId" />
		</orion:inputText>
		<orion:outputText name="libelleStructureAdministrative"
			 id="structureAdministrativeLibelleId"
			 style="width:350px;" />
	</html:panelGrid>
	
	<html:panelGrid columns="1" cellpadding="0" cellspacing="0"
		rendered="#{!creationSuiviPosteAffectationPonctuelleFC.formModel.object.poste.transient}">
		<orion:outputText name="numeroLibelleStructureAdministrative" label="Struct. administrative :" />
	</html:panelGrid>
	
	<html:panelGrid columns="2" cellspacing="0" cellpadding="0">
		<orion:inputText name="numeroStructureOperationnelle" size="10" maxLength="10"
			required="true" label="Struct. opérationnelle :">
			<orion:showPopUpButton url="/faces/commun/aides/structure.jsp"
				id="numeroStructureOperationnelle" text="" width="700" height="780" />
			<orion-async:asyncOnChange
				refresh="structureOperationnelleLibelleId,secteurBudgetaireId,imputBudgetaireID" />
		</orion:inputText>
		<orion:outputText name="libelleStructureOperationnelle"
			 id="structureOperationnelleLibelleId"
			 style="width:350px;" />
	</html:panelGrid>

	<html:panelGrid columns="1" cellspacing="0" cellpadding="0">
		<orion:comboBox controllerRef="secteurBudgetaireAffectationPonctuelleCBL" nullable="true"  
			valueStyle="width:200px" id="secteurBudgetaireId" submittedOnChange="true"
			disabled="#{!creationSuiviPosteAffectationPonctuelleFC.formModel.object.flagSecteurBudgetaireSaisissable}"
			name="secteurBudgetaire" label="Secteur budgétaire :" required="true"
			styleClass="combo-style350" displayProperty="codePlusSecteurParDefaut">
                    <orion-async:asyncOnChange refresh="secteurBudgetaireId, imputBudgetaireID" />
		</orion:comboBox>
	</html:panelGrid>
    <html:panelGrid columns="1">
		<orion:comboBox controllerRef="imputBudgtBySectBudgtAP"
			nullable="true" valueStyle="width:150px" name="imputBudgetaire"
			label="Imputation budgétaire :" styleClass="combo-style350"
			displayProperty="libelleProgrammeActionCompteAvecTIRET"
			id="imputBudgetaireID" labelStyle="width:150px;"/>
    </html:panelGrid>
	
	<html:panelGrid columns="2" cellspacing="0" cellpadding="0">
		<orion:inputText name="numeroAgent" size="10" maxLength="10"
			required="true" label="Agent :">
			<orion:showPopUpButton url="/faces/commun/listeagents/guideAgent.jsp"
				id="numeroAgent" text="" width="800" height="950" />
			<orion-async:asyncOnChange
				refresh="nomPrenomAgentId" />
		</orion:inputText>
		<orion:outputText name="nomPrenomAgent"
			 id="nomPrenomAgentId"
			 style="width:350px;" />
	</html:panelGrid>

	<core:verbatim>
		<br />
	</core:verbatim>
	<html:panelGrid columns="2" cellspacing="0" cellpadding="0" style="margin-left:30px;">
		<html:panelGrid>
			<orion:textArea name="profil" valueStyle="width:495px" 
				label="Profil :" labelStyle="text-align:left" />
		</html:panelGrid>
	</html:panelGrid>

	<html:panelGrid columns="2" cellspacing="0" cellpadding="0" style="margin-left:30px;"
		rendered="#{!creationSuiviPosteAffectationPonctuelleFC.formModel.object.poste.transient}">
		<html:panelGrid>
			<orion:textArea name="motifModification" valueStyle="width:495px" 
				label="Motif de modification :" labelStyle="text-align:left" />
		</html:panelGrid>
	</html:panelGrid>
	
	<html:panelGrid columns="4" cellspacing="0" cellpadding="10"
		rendered="#{!creationSuiviPosteAffectationPonctuelleFC.formModel.object.poste.transient}">
		
		<orion:button id="RetourDefaultID" text="Retour" tooltip="Retour" 
			icon="/images/common/action/btn-link.gif"
			classname="fr.gouv.agriculture.dag.agorha.application.commun.action.AgorhaBackAction" />
	
		<orion:showPopUpButton url="/mobilite/poste/tracabilite/consulterTracabilitePoste.jsp" 
			text="Consulter historique du poste" width="800" height="700" id="consulterHistoriquePosteHENS"
			icon="/images/common/action/btn-link.gif" rendered="#{habLienConsulterHistoriqueViewPolicy.utilisateurHabiliteConsulterHistorique}"
			 />
		
		<orion:button id="enregistrer"
			classname="fr.gouv.agriculture.orion.action.business.SaveAction"
			text="" tooltip="Enregistrer" />
		
		<orion:button text=""
			classname="fr.gouv.agriculture.dag.agorha.framework.action.AgorhaAction"
			id="annulerSaisie"
			icon="/images/common/action/btn-cancel.gif" />
	</html:panelGrid>
	
	<html:panelGrid columns="1" cellspacing="0" cellpadding="10" style="margin-left:430px;"
		rendered="#{creationSuiviPosteAffectationPonctuelleFC.formModel.object.poste.transient}">
		
		<orion:button id="enregistrerEtFermer" icon="/images/common/action/btn-save.gif"
			classname="fr.gouv.agriculture.orion.action.business.SaveAndCloseAction"
			text="" tooltip="Enregistrer" />
		
	</html:panelGrid>
</orion:form>
