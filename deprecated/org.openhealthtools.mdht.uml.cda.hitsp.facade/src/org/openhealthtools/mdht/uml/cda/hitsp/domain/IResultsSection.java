/*******************************************************************************
 * Copyright (c) 2011, 2012 David A Carlson and others.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 *
 * Contributors:
 *     David A Carlson (XMLmodeling.com) - initial API and implementation
 *******************************************************************************/
package org.openhealthtools.mdht.uml.cda.hitsp.domain;

import org.eclipse.emf.common.util.EList;
import org.openhealthtools.mdht.uml.cda.Section;
import org.openhealthtools.mdht.uml.cda.StrucDocText;
import org.openhealthtools.mdht.uml.hl7.datatypes.ST;

/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>Results Section</b></em>'.
 * <!-- end-user-doc -->
 *
 * <!-- begin-model-doc -->
 * <p>
 *     This section contains the results of observations generated by laboratories, imaging procedures, and
 *     other procedures. The scope includes hematology, chemistry, serology, virology, toxicology, microbiology, plain x-ray,
 *     ultrasound, CT, MRI, angiography, cardiac echo, nuclear medicine, pathology, and procedure observations. The section
 *     may contain all results for the period of time being summarized, but should include notable results such as abnormal
 *     values or relevant trends.
 * </p>
 * <p>
 *     Lab results are typically generated by laboratories providing analytic services in areas such as
 *     chemistry, hematology, serology, histology, cytology, anatomic pathology, microbiology, and/or virology. These
 *     observations are based on analysis of specimens obtained from the patient, submitted to the lab.
 * </p>
 * <p>
 *     Imaging results are typically generated by a clinician reviewing the output of an imaging procedure,
 *     such as where a cardiologist reports the left ventricular ejection fraction based on the review of a cardiac
 *     echo.
 * </p>
 * <p>
 *     Procedure results are typically generated by a clinician wanting to provide more granular information
 *     about component observations made during the performance of a procedure, such as where a gastroenterologist reports the
 *     size of a polyp observed during a colonoscopy.
 * </p>
 * <p>Refer to full implementation guide <a href="http://www.cdatools.org/infocenter/index.jsp"/>specification</a>.</p>
 * <!-- end-model-doc -->
 *
 * <p>
 * The following features are supported:
 * <ul>
 *   <li>{@link org.openhealthtools.mdht.uml.cda.hitsp.domain.IResultsSection#getCDAType <em>CDA Type</em>}</li>
 * </ul>
 * </p>
 *
 * @see org.openhealthtools.mdht.uml.cda.hitsp.domain.IDomainPackage#getResultsSection()
 * @generated
 */
public interface IResultsSection {
	/**
	 * Returns the value of the '<em><b>CDA Type</b></em>' reference.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>CDA Type</em>' reference isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>CDA Type</em>' reference.
	 * @see #setCDAType(Section)
	 * @see org.openhealthtools.mdht.uml.cda.hitsp.domain.IDomainPackage#getResultsSection_CDAType()
	 * @generated
	 */
	Section getCDAType();

	/**
	 * Sets the value of the '{@link org.openhealthtools.mdht.uml.cda.hitsp.domain.IResultsSection#getCDAType <em>CDA Type</em>}' reference.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>CDA Type</em>' reference.
	 * @see #getCDAType()
	 * @generated
	 */
	void setCDAType(Section value);

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * <!-- begin-model-doc -->
	 * cda::Section::title.
	 * self.title.oclAsType(datatypes::ST)
	 * <!-- end-model-doc -->
	 * @generated
	 */
	ST getTitle();

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * <!-- begin-model-doc -->
	 * CCD Results Section SHALL contain exactly one [1..1] title (CONF-391).
	 * <!-- end-model-doc -->
	 * @generated
	 */
	ST withTitle();

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * <!-- begin-model-doc -->
	 * CCD Results Section SHALL contain exactly one [1..1] title (CONF-391).
	 * <!-- end-model-doc -->
	 * @generated
	 */
	IResultsSection setTitle(ST value);

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * <!-- begin-model-doc -->
	 * cda::Section::text.
	 * self.text.oclAsType(cda::StrucDocText)
	 * <!-- end-model-doc -->
	 * @generated
	 */
	StrucDocText getText();

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * <!-- begin-model-doc -->
	 * CCD Results Section SHALL contain exactly one [1..1] text (CONF-388).
	 * <!-- end-model-doc -->
	 * @generated
	 */
	StrucDocText withText();

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * <!-- begin-model-doc -->
	 * CCD Results Section SHALL contain exactly one [1..1] text (CONF-388).
	 * <!-- end-model-doc -->
	 * @generated
	 */
	IResultsSection setText(StrucDocText value);

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * <!-- begin-model-doc -->
	 * ccd::ResultsSection::resultOrganizer.
	 * self.getOrganizers()->select(organizer : cda::Organizer | not organizer.oclIsUndefined() and organizer.oclIsKindOf(domain::ResultOrganizer)).oclAsType(domain::ResultOrganizer)
	 * <!-- end-model-doc -->
	 * @generated
	 */
	EList<IResultOrganizer> getResultOrganizers();

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * <!-- begin-model-doc -->
	 * CCD Results Section SHOULD contain at least one [1..*] entry (CONF-388), such that Contains exactly one [1..1] Result Organizer (templateId: 2.16.840.1.113883.10.20.1.32).
	 * <!-- end-model-doc -->
	 * @generated
	 */
	IResultOrganizer addResultOrganizer();

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * <!-- begin-model-doc -->
	 * CCD Results Section SHOULD contain at least one [1..*] entry (CONF-388), such that Contains exactly one [1..1] Result Organizer (templateId: 2.16.840.1.113883.10.20.1.32).
	 * <!-- end-model-doc -->
	 * @generated
	 */
	IResultsSection addResultOrganizer(IResultOrganizer value);

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public IResultsSection init();
} // IResultsSection
