/**
 */
package org.openhealthtools.mdht.uml.cda.sdtm.impl;

import java.lang.Iterable;

import java.util.Map;

import org.eclipse.emf.common.util.DiagnosticChain;

import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;

import org.openhealthtools.mdht.emf.runtime.util.Initializer;

import org.openhealthtools.mdht.uml.cda.impl.ActImpl;

import org.openhealthtools.mdht.uml.cda.sdtm.SdtmPackage;
import org.openhealthtools.mdht.uml.cda.sdtm.StudyArm;

import org.openhealthtools.mdht.uml.cda.sdtm.operations.StudyArmOperations;

/**
 * <!-- begin-user-doc -->
 * An implementation of the model object '<em><b>Study Arm</b></em>'.
 * <!-- end-user-doc -->
 * <p>
 * </p>
 *
 * @generated
 */
public class StudyArmImpl extends ActImpl implements StudyArm {
	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	protected StudyArmImpl() {
		super();
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	protected EClass eStaticClass() {
		return SdtmPackage.Literals.STUDY_ARM;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public boolean validateStudyArmTemplateId(DiagnosticChain diagnostics, Map<Object, Object> context) {
		return StudyArmOperations.validateStudyArmTemplateId(this, diagnostics, context);
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public boolean validateStudyArmClassCode(DiagnosticChain diagnostics, Map<Object, Object> context) {
		return StudyArmOperations.validateStudyArmClassCode(this, diagnostics, context);
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public boolean validateStudyArmMoodCode(DiagnosticChain diagnostics, Map<Object, Object> context) {
		return StudyArmOperations.validateStudyArmMoodCode(this, diagnostics, context);
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public boolean validateStudyArmCodeP(DiagnosticChain diagnostics, Map<Object, Object> context) {
		return StudyArmOperations.validateStudyArmCodeP(this, diagnostics, context);
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public boolean validateStudyArmCode(DiagnosticChain diagnostics, Map<Object, Object> context) {
		return StudyArmOperations.validateStudyArmCode(this, diagnostics, context);
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public boolean validateStudyArmText(DiagnosticChain diagnostics, Map<Object, Object> context) {
		return StudyArmOperations.validateStudyArmText(this, diagnostics, context);
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public boolean validateStudyArmEffectiveTime(DiagnosticChain diagnostics, Map<Object, Object> context) {
		return StudyArmOperations.validateStudyArmEffectiveTime(this, diagnostics, context);
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public StudyArm init() {
	    return Initializer.Util.init(this);
	}
    /**
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    @Override
	public StudyArm init(Iterable<? extends Initializer<? extends EObject>> initializers) {
        Initializer.Util.init(this, initializers);
        return this;
    }
} //StudyArmImpl
