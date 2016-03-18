<%@ taglib uri="http://java.sun.com/jsf/html" prefix="html"%>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="core"%>
<orion:form controllerRef="rechercheExportMobiloscopeFC"
	type="fr.gouv.agriculture.dag.agorha.business.view.mobilite.mobiloscope.RechercheEtExportMobiloscopeView">
	<html:panelGrid style="width:780px;">
		<html:panelGrid columns="3" cellpadding="0" cellspacing="0">
			<html:panelGrid>
				<orion:inputText name="anneeCampagne" required="true" size="10"
					label="Année de la campagne : " labelStyle="width:160px;"
					maxLength="4" />
			</html:panelGrid>

			<html:panelGrid>
				<orion:comboBox controller="periodeCampagneComboBoxListController"
					required="true" nullable="true" name="libelleCampagne"
					displayProperty="codeLibelle" valueStyle="width:130px"
					label="Libellé de la campagne :" />
			</html:panelGrid>

			<html:panelGrid>
				<orion:inputDate name="dateReference" label="Date de référence :"
					pattern="dd/MM/yyyy" size="10" labelStyle="width:120px;" />
			</html:panelGrid>
		</html:panelGrid>

		<html:panelGrid columns="2" cellpadding="0" cellspacing="0">
			<html:panelGrid style="width:330px;">
				<orion:comboBox controllerRef="secteurMobiliteAllCBL"
					nullable="true" valueStyle="width:160px" name="secteurMobilite"
					label="Secteur de mobilité : " styleClass="combo-style350"
					displayProperty="codeLibelle" labelStyle="width:160px;" />
			</html:panelGrid>
			<html:panelGrid style="width:400px;">
				<orion:comboBox controller="missionAPSComboBoxListController"
					nullable="true" valueStyle="width:250px" name="maps"
					label="MAPS : " styleClass="combo-style350"
					displayProperty="codeLibelle" labelStyle="width:160px;" />
			</html:panelGrid>
		</html:panelGrid>

		<html:panelGrid columns="2" cellspacing="0" cellpadding="0">
			<html:panelGrid>
				<orion:inputText name="codeDepartementSaisi" size="10"
					maxLength="10" label="Département : " submittedOnBlur="true"
					labelStyle="width:160px;">
					<orion:showPopUpButton
						url="/commun/aides/zoneGeographiqueDepartement.jsp"
						id="codeDepartementSaisi" text="" width="800" height="700" />
					<orion-async:asyncOnChange refresh="libelleDepartementID" />
				</orion:inputText>
			</html:panelGrid>
			<html:panelGrid>
				<orion:inputText name="libelleDepartement" disabled="true" size="70"
					id="libelleDepartementID" style="width:280px;" />
			</html:panelGrid>
		</html:panelGrid>

		<html:panelGrid columns="2" cellspacing="0" cellpadding="0">
			<html:panelGrid>
				<orion:inputText name="numeroStrAdSaisie" size="10" maxLength="10"
					label="Structure administrative : " submittedOnBlur="true"
					labelStyle="width:160px;">
					<orion:showPopUpButton url="/faces/commun/aides/structure.jsp"
						id="numeroStrAdSaisie" text="" width="800" height="700" />
					<orion-async:asyncOnChange
						refresh="structureAdministrativeLibelleId" />
				</orion:inputText>
			</html:panelGrid>
			<html:panelGrid>
				<orion:inputText name="structureAdministrativeLibelle"
					disabled="true" size="70" id="structureAdministrativeLibelleId"
					style="width:200px;" />
			</html:panelGrid>
		</html:panelGrid>

		<html:panelGrid columns="2" cellspacing="0" cellpadding="0">
			<html:panelGrid>
				<orion:inputText name="numeroStrOpSaisie" size="10" maxLength="10"
					label="Structure opérationnelle : " submittedOnBlur="true"
					labelStyle="width:160px;">
					<orion:showPopUpButton url="/faces/commun/aides/structure.jsp"
						text="" width="800" height="700" id="numeroStrOpSaisie" />
				</orion:inputText>
			</html:panelGrid>
			<html:panelGrid>
				<orion:inputText name="structureOperationnelleLibelle"
					disabled="true" size="70" id="structureOperationnelleLibelleId"
					style="width:200px;" />
			</html:panelGrid>
		</html:panelGrid>

		<orion:slaveForm controllerRef="guideCorpsMultiSelectionAllowedSFC" 
			type="fr.gouv.agriculture.dag.agorha.business.view.mobilite.mobiloscope.RechercheEtExportMobiloscopeView">

			<html:panelGrid columns="2" cellspacing="0" cellpadding="0">
				<html:panelGrid>
					<orion:inputText name="codeCorpsSaisies" size="10" label="Corps : "
						submittedOnBlur="true" labelStyle="width:160px;">
						<orion:showPopUpButton url="/faces/commun/aides/corps.jsp" text=""
							width="800" height="700" id="codeCorpsSaisies" />
						<orion-async:asyncOnChange refresh="corpsLibelleID" />
					</orion:inputText>
				</html:panelGrid>

				<html:panelGrid>
					<orion:inputText name="corpsLibelle" disabled="true" size="70"
						id="corpsLibelleID" style="width:200px;" />
				</html:panelGrid>
			</html:panelGrid>

		</orion:slaveForm>

		<html:panelGrid columns="2" cellspacing="0" cellpadding="0">
			<html:panelGrid style="width:330px;">
				<orion:comboBox name="avis11" label="Avis 1 : " nullable="true"
					controllerRef="avis11CBL" labelStyle="width:160px;"
					styleClass="combo-style350" valueStyle="width:160px" />
			</html:panelGrid>
			<html:panelGrid>
				<orion:comboBox name="avis12" controllerRef="avisIndAutreEgalOCBL"
					nullable="true" displayProperty="codeLibelleAvis" />
			</html:panelGrid>
		</html:panelGrid>

		<html:panelGrid columns="2" cellspacing="0" cellpadding="0">
			<html:panelGrid style="width:330px;">
				<orion:comboBox name="avis21" label="Avis 2 : " nullable="true"
					controllerRef="avis21CBL" labelStyle="width:160px;"
					styleClass="combo-style350" valueStyle="width:160px" />
			</html:panelGrid>
			<html:panelGrid>
				<orion:comboBox name="avis22" controllerRef="avisIndAutreEgalOCBL"
					nullable="true" displayProperty="codeLibelleAvis" />
			</html:panelGrid>
		</html:panelGrid>

		<html:panelGrid columns="2" cellspacing="0" cellpadding="0">
			<html:panelGrid style="width:330px;">
				<orion:comboBox name="typeMobiloscope" labelStyle="width:160px;"
					styleClass="combo-style350" valueStyle="width:160px"
					label="Type de Mobiloscope : " controllerRef="typeMobiloscopeCBL"
					nullable="true" />
			</html:panelGrid>
		</html:panelGrid>

		<core:verbatim>
			<br />
			<br />
		</core:verbatim>

		<html:panelGrid columns="2">
			<html:panelGrid>
				<orion:inputText name="nomFichier" required="true"
					label="Nom du fichier Excel à générer : " labelStyle="width:200px;"
					maxLength="8" />
			</html:panelGrid>
			<html:panelGrid styleClass="right100"
				style="margin-left:140px; width:250px;">
				<orion:button id="rechercher_Exporter_mobiloscope"
					text="Rechercher et Exporter"
					icon="/images/common/action/btn-link.png"
					classname="fr.gouv.agriculture.dag.agorha.application.commun.action.export.ExportEditionSpecificNameAction"
					tooltip="Rechercher et Exporter" />
			</html:panelGrid>
		</html:panelGrid>
	</html:panelGrid>
</orion:form>
