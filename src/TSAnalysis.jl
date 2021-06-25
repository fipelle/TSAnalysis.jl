__precompile__()

module TSAnalysis

    # Libraries
    using Dates, Distributed, Logging;
    using LinearAlgebra, Distributions, Statistics;

    # Custom dependencies
    const local_path = dirname(@__FILE__);
    include("$local_path/types.jl");
    include("$local_path/methods.jl");
    include("$local_path/kalman.jl");
    include("$local_path/subsampling.jl");
    #include("$local_path/uc_models.jl");

    # Export types
    export JVector, JArray, IntVector, IntMatrix, IntArray, FloatVector, FloatMatrix, FloatArray, SymMatrix, DiagMatrix,
           KalmanSettings, ImmutableKalmanSettings, MutableKalmanSettings, KalmanStatus,
           ARIMASettings, VARIMASettings;

    # Export methods
    export check_bounds, isnothing, error_info, verb_message, interpolate, forward_backwards_rw_interpolation, centred_moving_average,
            soft_thresholding, isconverged, sum_skipmissing, mean_skipmissing, std_skipmissing, is_vector_in_matrix, demean, standardise, lag, companion_form;

    # Export functions
    export kfilter!, kfilter_full_sample, kforecast, ksmoother, fmin_uc_models, arima, varima, forecast,
           block_jackknife, optimal_d, artificial_jackknife, moving_block_bootstrap, stationary_block_bootstrap;
end
