"StudentLaw package, provides the `studentcoef` function"
module StudentLaw

export studentcoef

# Package Distributions is required as an implementation of the t-distribution
import Distributions

"""
    studentcoef(dof, proba; digits, side)

    Computes the Student's coefficient for a distribution with 'dof' degrees of freedom, for a probability 'proba'. The value is round to 'digits' digits. By default, it assumes a two-sided distribution but a one-sided distribution is also supported

dof: Int, number of degrees of freedom

proba: Float, probability for the Student's coefficient value

digits: Int, number of digits to round the value [defaults to 3 digits]

side: Int, 2 for two-sided distribution or 1 for one-sided distribution
"""
function studentcoef(dof::Int, proba::Real; digits::Int = 3, side::Int = 2)
    # side=2: two-sided distribution
    # side=1: one-sided distribution
    if side != 2 && side != 1
        throw(DomainError(side,"t-distribution can only be two-sided or one-sided"))
    end
    # the proba for the confidence interval, e.g., 95%
    if !(0.0 <= proba <= 1.0)
        throw(DomainError(proba,"proba can only be between 0 and 1"))
    end
    if side == 2
        proba = (1+proba)/2
    end
    return round(Distributions.quantile(Distributions.TDist(dof), proba),digits=digits)
end

end
