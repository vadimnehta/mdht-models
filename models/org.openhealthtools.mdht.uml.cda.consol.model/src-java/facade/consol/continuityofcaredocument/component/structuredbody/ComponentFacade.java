package facade.consol.continuityofcaredocument.component.structuredbody;

import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.stream.Collectors;
import java.util.stream.Stream;

import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.common.util.BasicDiagnostic;
import org.eclipse.emf.common.util.Diagnostic;
import org.eclipse.emf.common.util.DiagnosticChain;
import org.eclipse.emf.ecore.util.FeatureMapUtil;
import org.openhealthtools.mdht.uml.cda.*;
import org.openhealthtools.mdht.uml.cda.util.CDAUtil;
import org.openhealthtools.mdht.uml.hl7.datatypes.*;
import org.openhealthtools.mdht.uml.hl7.vocab.*;

public class ComponentFacade extends facade.FacadeBase {

	public Component3 self;

	public ComponentFacade()
	{
		this.self = CDAFactory.eINSTANCE.createComponent3();
	}

	public ComponentFacade(Component3 self)
	{
		this.self = self;
	}

	public static boolean isKindOf(Component3 self)
	{
		return Flatten(Set(self.getSection()).map(i3700 -> Set(i3700.getTemplateIds()))).anyMatch(id -> Set(id.getRoot()).collect(Collectors.toList()).contains("2.16.840.1.113883.10.20.22.2.6.1"));
	}

	@Override
	public Object getModelElement()
	{
		return self;
	}

	public void Init()
	{
		GetOrCreateAllergiesSection();
		GetOrCreateSection();
	}

	/**
	 *UML path: /ContinuityOfCareDocument/component/structuredBody/allergiesSection
	 *UML root path: /ContinuityOfCareDocument/component/structuredBody/allergiesSection
	*/
	public void Validate(DiagnosticChain vb, DataElementLevel del)
	{
			ValidateContinuityOfCareDocumentComponentStructuredBodyComponentAllergiesSection(vb, del);

			allergiesSection().forEach(x -> x.Validate(vb, del));
			realmCode().forEach(x -> x.Validate(vb, del));
			typeId().forEach(x -> x.Validate(vb, del));
			templateId().forEach(x -> x.Validate(vb, del));
			section().forEach(x -> x.Validate(vb, del));
	}
	/**
	 * OCL: self.section->one(section : cda::Section | not section.oclIsUndefined() and section.oclIsKindOf(consol::AllergiesSection))
	 * Context: /ContinuityOfCareDocument/component/structuredBody/allergiesSection
	 * Context Class: consol::ContinuityOfCareDocument::Component::StructuredBody::Component
	 * Constraint Name: consol::ContinuityOfCareDocument::Component::StructuredBody::Component::ContinuityOfCareDocumentComponentStructuredBodyComponentAllergiesSection
	 */
	public boolean ValidateContinuityOfCareDocumentComponentStructuredBodyComponentAllergiesSection(DiagnosticChain vb, DataElementLevel del)
	{
		if (del != null && del != DataElementLevel.DEL_CDA_BODY_LEVEL_2)
		{
			return true;
		}
		boolean result = Set(self.getSection()).filter(i3680 -> !(Set(i3680).count()==0) && Set(One(Set(i3680)).getTemplateIds()).anyMatch(id -> Set(id.getRoot()).collect(Collectors.toList()).contains("2.16.840.1.113883.10.20.22.2.6.1"))).count()==1;
		if (!result && vb != null)
		{
			vb.add(new BasicDiagnostic(Diagnostic.ERROR, null, 0, "Error: ContinuityOfCareDocument - 2.2.7.i.a.1 allergiesSection\n\t\tConformance: SHALL contain exactly one [1..1] section (CONF:9445)\n\t\tAnalysis: n/a\n\t\tValidation message: n/a", new Object [] { self }));
		}
		return result;
	}

	public Stream<facade.consol.AllergiesSectionFacade> allergiesSection()
	{
		return Set(self.getSection()).filter( x -> facade.consol.AllergiesSectionFacade.isKindOf(x)).map( x -> new facade.consol.AllergiesSectionFacade(x));
	}

	public facade.consol.AllergiesSectionFacade GetOrCreateAllergiesSection()
	{
		Optional<facade.consol.AllergiesSectionFacade> lastOrDefault = allergiesSection().reduce((a, b) -> b);
		if (lastOrDefault.isPresent())
		{
			MarkSpecified(self, org.openhealthtools.mdht.uml.cda.CDAPackage.eINSTANCE.getComponent3_Section());
			return lastOrDefault.get();
		}
		return CreateAnotherAllergiesSection();
	}

	public facade.consol.AllergiesSectionFacade CreateAnotherAllergiesSection()
	{
		Section element = CDAFactory.eINSTANCE.createSection();
		facade.consol.AllergiesSectionFacade elementFacade = new facade.consol.AllergiesSectionFacade(element);
		elementFacade.Init();
		self.setSection(element);
		return elementFacade;
	}

	public facade.consol.AllergiesSectionFacade AllergiesSection() {
		return GetOrCreateAllergiesSection();
	}

	public Stream<facade.datatypes.CSFacade> realmCode()
	{
		return Set(self.getRealmCodes()).filter( x -> x instanceof CS).map( x -> (CS) x).map( x -> new facade.datatypes.CSFacade(x));
	}

	public facade.datatypes.CSFacade GetOrCreateRealmCode()
	{
		Optional<facade.datatypes.CSFacade> lastOrDefault = realmCode().reduce((a, b) -> b);
		if (lastOrDefault.isPresent())
		{
			MarkSpecified(self, org.openhealthtools.mdht.uml.cda.CDAPackage.eINSTANCE.getComponent3_RealmCode());
			return lastOrDefault.get();
		}
		return CreateAnotherRealmCode();
	}

	public facade.datatypes.CSFacade CreateAnotherRealmCode()
	{
		CS element = DatatypesFactory.eINSTANCE.createCS();
		facade.datatypes.CSFacade elementFacade = new facade.datatypes.CSFacade(element);
		elementFacade.Init();
		self.getRealmCodes().add(element);
		return elementFacade;
	}

	public facade.datatypes.CSFacade RealmCode() {
		return GetOrCreateRealmCode();
	}

	public Stream<facade.cda.InfrastructureRootTypeIdFacade> typeId()
	{
		return Set(self.getTypeId()).filter( x -> facade.cda.InfrastructureRootTypeIdFacade.isKindOf(x)).map( x -> new facade.cda.InfrastructureRootTypeIdFacade(x));
	}

	public facade.cda.InfrastructureRootTypeIdFacade GetOrCreateTypeId()
	{
		Optional<facade.cda.InfrastructureRootTypeIdFacade> lastOrDefault = typeId().reduce((a, b) -> b);
		if (lastOrDefault.isPresent())
		{
			MarkSpecified(self, org.openhealthtools.mdht.uml.cda.CDAPackage.eINSTANCE.getComponent3_TypeId());
			return lastOrDefault.get();
		}
		return CreateAnotherTypeId();
	}

	public facade.cda.InfrastructureRootTypeIdFacade CreateAnotherTypeId()
	{
		InfrastructureRootTypeId element = CDAFactory.eINSTANCE.createInfrastructureRootTypeId();
		facade.cda.InfrastructureRootTypeIdFacade elementFacade = new facade.cda.InfrastructureRootTypeIdFacade(element);
		elementFacade.Init();
		self.setTypeId(element);
		return elementFacade;
	}

	public facade.cda.InfrastructureRootTypeIdFacade TypeId() {
		return GetOrCreateTypeId();
	}

	public Stream<facade.datatypes.IIFacade> templateId()
	{
		return Set(self.getTemplateIds()).filter( x -> x instanceof II).map( x -> (II) x).map( x -> new facade.datatypes.IIFacade(x));
	}

	public facade.datatypes.IIFacade GetOrCreateTemplateId()
	{
		Optional<facade.datatypes.IIFacade> lastOrDefault = templateId().reduce((a, b) -> b);
		if (lastOrDefault.isPresent())
		{
			MarkSpecified(self, org.openhealthtools.mdht.uml.cda.CDAPackage.eINSTANCE.getComponent3_TemplateId());
			return lastOrDefault.get();
		}
		return CreateAnotherTemplateId();
	}

	public facade.datatypes.IIFacade CreateAnotherTemplateId()
	{
		II element = DatatypesFactory.eINSTANCE.createII();
		facade.datatypes.IIFacade elementFacade = new facade.datatypes.IIFacade(element);
		elementFacade.Init();
		self.getTemplateIds().add(element);
		return elementFacade;
	}

	public facade.datatypes.IIFacade TemplateId() {
		return GetOrCreateTemplateId();
	}

	public Stream<facade.cda.SectionFacade> section()
	{
		return Set(self.getSection()).filter( x -> facade.cda.SectionFacade.isKindOf(x)).map( x -> new facade.cda.SectionFacade(x));
	}

	public facade.cda.SectionFacade GetOrCreateSection()
	{
		Optional<facade.cda.SectionFacade> lastOrDefault = section().reduce((a, b) -> b);
		if (lastOrDefault.isPresent())
		{
			MarkSpecified(self, org.openhealthtools.mdht.uml.cda.CDAPackage.eINSTANCE.getComponent3_Section());
			return lastOrDefault.get();
		}
		return CreateAnotherSection();
	}

	public facade.cda.SectionFacade CreateAnotherSection()
	{
		Section element = CDAFactory.eINSTANCE.createSection();
		facade.cda.SectionFacade elementFacade = new facade.cda.SectionFacade(element);
		elementFacade.Init();
		self.setSection(element);
		return elementFacade;
	}

	public facade.cda.SectionFacade Section() {
		return GetOrCreateSection();
	}

	public Stream<NullFlavor> nullFlavor()
	{
		return Set(self.getNullFlavor());
	}

	public NullFlavor GetOrCreateNullFlavor()
	{
		Optional<NullFlavor> lastOrDefault = nullFlavor().reduce((a, b) -> b);
		if (lastOrDefault.isPresent())
		{
			MarkSpecified(self, org.openhealthtools.mdht.uml.cda.CDAPackage.eINSTANCE.getComponent3_NullFlavor());
			return lastOrDefault.get();
		}
		return CreateAnotherNullFlavor();
	}

	public NullFlavor CreateAnotherNullFlavor()
	{
		MarkSpecified(self, org.openhealthtools.mdht.uml.cda.CDAPackage.eINSTANCE.getComponent3_NullFlavor());
		NullFlavor element = NullFlavor.get(0);
		self.setNullFlavor(element);
		return element;
	}

	public NullFlavor NullFlavor() {
		return GetOrCreateNullFlavor();
	}

	public void NullFlavor(NullFlavor value) {
		self.setNullFlavor(value);
	}

	public Stream<ActRelationshipHasComponent> typeCode()
	{
		return Set(self.getTypeCode());
	}

	public ActRelationshipHasComponent GetOrCreateTypeCode()
	{
		Optional<ActRelationshipHasComponent> lastOrDefault = typeCode().reduce((a, b) -> b);
		if (lastOrDefault.isPresent())
		{
			MarkSpecified(self, org.openhealthtools.mdht.uml.cda.CDAPackage.eINSTANCE.getComponent3_TypeCode());
			return lastOrDefault.get();
		}
		return CreateAnotherTypeCode();
	}

	public ActRelationshipHasComponent CreateAnotherTypeCode()
	{
		MarkSpecified(self, org.openhealthtools.mdht.uml.cda.CDAPackage.eINSTANCE.getComponent3_TypeCode());
		ActRelationshipHasComponent element = ActRelationshipHasComponent.get(0);
		self.setTypeCode(element);
		return element;
	}

	public ActRelationshipHasComponent TypeCode() {
		return GetOrCreateTypeCode();
	}

	public void TypeCode(ActRelationshipHasComponent value) {
		self.setTypeCode(value);
	}

	public Stream<Boolean> contextConductionInd()
	{
		return Set(self.getContextConductionInd());
	}

	public Boolean GetOrCreateContextConductionInd()
	{
		Optional<Boolean> lastOrDefault = contextConductionInd().reduce((a, b) -> b);
		if (lastOrDefault.isPresent())
		{
			MarkSpecified(self, org.openhealthtools.mdht.uml.cda.CDAPackage.eINSTANCE.getComponent3_ContextConductionInd());
			return lastOrDefault.get();
		}
		return CreateAnotherContextConductionInd();
	}

	public Boolean CreateAnotherContextConductionInd()
	{
		MarkSpecified(self, org.openhealthtools.mdht.uml.cda.CDAPackage.eINSTANCE.getComponent3_ContextConductionInd());
		Boolean element = Boolean.FALSE;
		self.setContextConductionInd(element);
		return element;
	}

	public Boolean ContextConductionInd() {
		return GetOrCreateContextConductionInd();
	}

	public void ContextConductionInd(Boolean value) {
		self.setContextConductionInd(value);
	}

}
