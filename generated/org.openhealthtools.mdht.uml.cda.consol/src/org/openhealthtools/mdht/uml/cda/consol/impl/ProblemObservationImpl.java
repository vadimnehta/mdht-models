/**
 * <copyright>
 * </copyright>
 *
 * $Id$
 */
package org.openhealthtools.mdht.uml.cda.consol.impl;

import java.util.Map;

import org.eclipse.emf.common.util.DiagnosticChain;

import org.eclipse.emf.ecore.EClass;

import org.openhealthtools.mdht.uml.cda.consol.AgeObservation;
import org.openhealthtools.mdht.uml.cda.consol.ConsolPackage;
import org.openhealthtools.mdht.uml.cda.consol.HealthStatusObservation;
import org.openhealthtools.mdht.uml.cda.consol.ProblemObservation;
import org.openhealthtools.mdht.uml.cda.consol.ProblemStatus;

import org.openhealthtools.mdht.uml.cda.consol.operations.ProblemObservationOperations;

import org.openhealthtools.mdht.uml.cda.impl.ObservationImpl;

import org.openhealthtools.mdht.uml.cda.util.CDAUtil;

/**
 * <!-- begin-user-doc -->
 * An implementation of the model object '<em><b>Problem Observation</b></em>'.
 * <!-- end-user-doc -->
 * <p>
 * </p>
 *
 * @generated
 */
public class ProblemObservationImpl extends ObservationImpl implements ProblemObservation {
	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	protected ProblemObservationImpl() {
		super();
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	protected EClass eStaticClass() {
		return ConsolPackage.Literals.PROBLEM_OBSERVATION;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public boolean validateProblemObservationHasTextReference(DiagnosticChain diagnostics, Map<Object, Object> context) {
		return ProblemObservationOperations.validateProblemObservationHasTextReference(this, diagnostics, context);
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public boolean validateProblemObservationHasOnsetDate(DiagnosticChain diagnostics, Map<Object, Object> context) {
		return ProblemObservationOperations.validateProblemObservationHasOnsetDate(this, diagnostics, context);
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public boolean validateProblemObservationHasResolutionDate(DiagnosticChain diagnostics, Map<Object, Object> context) {
		return ProblemObservationOperations.validateProblemObservationHasResolutionDate(this, diagnostics, context);
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public boolean validateProblemObservationHasUnknownResolutionDate(DiagnosticChain diagnostics,
			Map<Object, Object> context) {
		return ProblemObservationOperations.validateProblemObservationHasUnknownResolutionDate(
			this, diagnostics, context);
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public boolean validateProblemObservationTemplateId(DiagnosticChain diagnostics, Map<Object, Object> context) {
		return ProblemObservationOperations.validateProblemObservationTemplateId(this, diagnostics, context);
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public boolean validateProblemObservationClassCode(DiagnosticChain diagnostics, Map<Object, Object> context) {
		return ProblemObservationOperations.validateProblemObservationClassCode(this, diagnostics, context);
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public boolean validateProblemObservationMoodCode(DiagnosticChain diagnostics, Map<Object, Object> context) {
		return ProblemObservationOperations.validateProblemObservationMoodCode(this, diagnostics, context);
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public boolean validateProblemObservationNegationInd(DiagnosticChain diagnostics, Map<Object, Object> context) {
		return ProblemObservationOperations.validateProblemObservationNegationInd(this, diagnostics, context);
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public boolean validateProblemObservationId(DiagnosticChain diagnostics, Map<Object, Object> context) {
		return ProblemObservationOperations.validateProblemObservationId(this, diagnostics, context);
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public boolean validateProblemObservationCode(DiagnosticChain diagnostics, Map<Object, Object> context) {
		return ProblemObservationOperations.validateProblemObservationCode(this, diagnostics, context);
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public boolean validateProblemObservationText(DiagnosticChain diagnostics, Map<Object, Object> context) {
		return ProblemObservationOperations.validateProblemObservationText(this, diagnostics, context);
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public boolean validateProblemObservationStatusCode(DiagnosticChain diagnostics, Map<Object, Object> context) {
		return ProblemObservationOperations.validateProblemObservationStatusCode(this, diagnostics, context);
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public boolean validateProblemObservationEffectiveTime(DiagnosticChain diagnostics, Map<Object, Object> context) {
		return ProblemObservationOperations.validateProblemObservationEffectiveTime(this, diagnostics, context);
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public boolean validateProblemObservationValue(DiagnosticChain diagnostics, Map<Object, Object> context) {
		return ProblemObservationOperations.validateProblemObservationValue(this, diagnostics, context);
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public boolean validateProblemObservationAgeObservation(DiagnosticChain diagnostics, Map<Object, Object> context) {
		return ProblemObservationOperations.validateProblemObservationAgeObservation(this, diagnostics, context);
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public boolean validateProblemObservationHealthStatusObservation(DiagnosticChain diagnostics,
			Map<Object, Object> context) {
		return ProblemObservationOperations.validateProblemObservationHealthStatusObservation(
			this, diagnostics, context);
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public boolean validateProblemObservationProblemStatus(DiagnosticChain diagnostics, Map<Object, Object> context) {
		return ProblemObservationOperations.validateProblemObservationProblemStatus(this, diagnostics, context);
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public AgeObservation getAgeObservation() {
		return ProblemObservationOperations.getAgeObservation(this);
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public HealthStatusObservation getHealthStatusObservation() {
		return ProblemObservationOperations.getHealthStatusObservation(this);
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public ProblemStatus getProblemStatus() {
		return ProblemObservationOperations.getProblemStatus(this);
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public ProblemObservation init() {
		CDAUtil.init(this);
		return this;
	}
} // ProblemObservationImpl
