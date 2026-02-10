#
# Copyright (C) YuqiaoZhang(HanetakaChou)
# 
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU Lesser General Public License as published
# by the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
# 
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU Lesser General Public License for more details.
# 
# You should have received a copy of the GNU Lesser General Public License
# along with this program.  If not, see <https://www.gnu.org/licenses/>.
#

# https://developer.android.com/ndk/guides/android_mk

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := tensorflow-lite

LOCAL_SRC_FILES := \
	$(LOCAL_PATH)/../../farmhash/src/farmhash.cc \
	$(LOCAL_PATH)/../../gemmlowp/eight_bit_int_gemm/eight_bit_int_gemm.cc \
	$(LOCAL_PATH)/../../OouraFFT/fftsg.c \
	$(LOCAL_PATH)/../../OouraFFT/fftsg2d.c \
	$(LOCAL_PATH)/../../ruy/ruy/allocator.cc \
	$(LOCAL_PATH)/../../ruy/ruy/apply_multiplier.cc \
	$(LOCAL_PATH)/../../ruy/ruy/blocking_counter.cc \
	$(LOCAL_PATH)/../../ruy/ruy/block_map.cc \
	$(LOCAL_PATH)/../../ruy/ruy/context.cc \
	$(LOCAL_PATH)/../../ruy/ruy/context_get_ctx.cc \
	$(LOCAL_PATH)/../../ruy/ruy/cpuinfo.cc \
	$(LOCAL_PATH)/../../ruy/ruy/ctx.cc \
	$(LOCAL_PATH)/../../ruy/ruy/denormal.cc \
	$(LOCAL_PATH)/../../ruy/ruy/frontend.cc \
	$(LOCAL_PATH)/../../ruy/ruy/have_built_path_for_avx.cc \
	$(LOCAL_PATH)/../../ruy/ruy/have_built_path_for_avx2_fma.cc \
	$(LOCAL_PATH)/../../ruy/ruy/have_built_path_for_avx512.cc \
	$(LOCAL_PATH)/../../ruy/ruy/kernel_arm32.cc \
	$(LOCAL_PATH)/../../ruy/ruy/kernel_arm64.cc \
	$(LOCAL_PATH)/../../ruy/ruy/kernel_avx.cc \
	$(LOCAL_PATH)/../../ruy/ruy/kernel_avx2_fma.cc \
	$(LOCAL_PATH)/../../ruy/ruy/kernel_avx512.cc \
	$(LOCAL_PATH)/../../ruy/ruy/pack_arm.cc \
	$(LOCAL_PATH)/../../ruy/ruy/pack_avx.cc \
	$(LOCAL_PATH)/../../ruy/ruy/pack_avx2_fma.cc \
	$(LOCAL_PATH)/../../ruy/ruy/pack_avx512.cc \
	$(LOCAL_PATH)/../../ruy/ruy/prepacked_cache.cc \
	$(LOCAL_PATH)/../../ruy/ruy/prepare_packed_matrices.cc \
	$(LOCAL_PATH)/../../ruy/ruy/profiler/instrumentation.cc \
	$(LOCAL_PATH)/../../ruy/ruy/system_aligned_alloc.cc \
	$(LOCAL_PATH)/../../ruy/ruy/thread_pool.cc \
	$(LOCAL_PATH)/../../ruy/ruy/trmul.cc \
	$(LOCAL_PATH)/../../ruy/ruy/tune.cc \
	$(LOCAL_PATH)/../../ruy/ruy/wait.cc \
	$(LOCAL_PATH)/../proto-cpp-out/tensorflow/lite/profiling/proto/model_runtime_info.pb.cc \
	$(LOCAL_PATH)/../proto-cpp-out/tensorflow/lite/profiling/proto/profiling_info.pb.cc \
	$(LOCAL_PATH)/../tensorflow/compiler/mlir/lite/allocation.cc \
	$(LOCAL_PATH)/../tensorflow/compiler/mlir/lite/core/api/error_reporter.cc \
	$(LOCAL_PATH)/../tensorflow/compiler/mlir/lite/core/model_builder_base.cc \
	$(LOCAL_PATH)/../tensorflow/compiler/mlir/lite/experimental/remat/metadata_util.cc \
	$(LOCAL_PATH)/../tensorflow/compiler/mlir/lite/mmap_allocation_disabled.cc \
	$(LOCAL_PATH)/../tensorflow/compiler/mlir/lite/schema/schema_utils.cc \
	$(LOCAL_PATH)/../tensorflow/compiler/mlir/lite/utils/string_utils.cc \
	$(LOCAL_PATH)/../tensorflow/lite/arena_planner.cc \
	$(LOCAL_PATH)/../tensorflow/lite/array.cc \
	$(LOCAL_PATH)/../tensorflow/lite/core/acceleration/configuration/delegate_registry.cc \
	$(LOCAL_PATH)/../tensorflow/lite/core/acceleration/configuration/nnapi_plugin.cc \
	$(LOCAL_PATH)/../tensorflow/lite/core/acceleration/configuration/stable_delegate_registry.cc \
	$(LOCAL_PATH)/../tensorflow/lite/core/api/flatbuffer_conversions.cc \
	$(LOCAL_PATH)/../tensorflow/lite/core/api/op_resolver.cc \
	$(LOCAL_PATH)/../tensorflow/lite/core/api/tensor_utils.cc \
	$(LOCAL_PATH)/../tensorflow/lite/core/async/async_signature_runner.cc \
	$(LOCAL_PATH)/../tensorflow/lite/core/async/async_subgraph.cc \
	$(LOCAL_PATH)/../tensorflow/lite/core/async/c/async_kernel.cc \
	$(LOCAL_PATH)/../tensorflow/lite/core/async/c/async_signature_runner.cc \
	$(LOCAL_PATH)/../tensorflow/lite/core/async/c/task.cc \
	$(LOCAL_PATH)/../tensorflow/lite/core/async/interop/attribute_map_internal.cc \
	$(LOCAL_PATH)/../tensorflow/lite/core/async/interop/c/attribute_map.cc \
	$(LOCAL_PATH)/../tensorflow/lite/core/async/interop/c/constants.cc \
	$(LOCAL_PATH)/../tensorflow/lite/core/async/interop/c/types.cc \
	$(LOCAL_PATH)/../tensorflow/lite/core/async/interop/reconcile_fns.cc \
	$(LOCAL_PATH)/../tensorflow/lite/core/async/interop/variant.cc \
	$(LOCAL_PATH)/../tensorflow/lite/core/async/task_internal.cc \
	$(LOCAL_PATH)/../tensorflow/lite/core/create_op_resolver_with_builtin_ops.cc \
	$(LOCAL_PATH)/../tensorflow/lite/core/c/common.cc \
	$(LOCAL_PATH)/../tensorflow/lite/core/c/c_api.cc \
	$(LOCAL_PATH)/../tensorflow/lite/core/c/c_api_experimental.cc \
	$(LOCAL_PATH)/../tensorflow/lite/core/c/c_api_opaque.cc \
	$(LOCAL_PATH)/../tensorflow/lite/core/c/operator.cc \
	$(LOCAL_PATH)/../tensorflow/lite/core/interpreter.cc \
	$(LOCAL_PATH)/../tensorflow/lite/core/interpreter_builder.cc \
	$(LOCAL_PATH)/../tensorflow/lite/core/interpreter_experimental.cc \
	$(LOCAL_PATH)/../tensorflow/lite/core/kernels/register.cc \
	$(LOCAL_PATH)/../tensorflow/lite/core/signature_runner.cc \
	$(LOCAL_PATH)/../tensorflow/lite/core/subgraph.cc \
	$(LOCAL_PATH)/../tensorflow/lite/core/tools/verifier.cc \
	$(LOCAL_PATH)/../tensorflow/lite/core/tools/verifier_internal.cc \
	$(LOCAL_PATH)/../tensorflow/lite/c/common_internal.cc \
	$(LOCAL_PATH)/../tensorflow/lite/c/c_api_for_testing.cc \
	$(LOCAL_PATH)/../tensorflow/lite/c/c_api_opaque_internal.cc \
	$(LOCAL_PATH)/../tensorflow/lite/delegates/external/external_delegate.cc \
	$(LOCAL_PATH)/../tensorflow/lite/delegates/gpu/api.cc \
	$(LOCAL_PATH)/../tensorflow/lite/delegates/gpu/cl/api.cc \
	$(LOCAL_PATH)/../tensorflow/lite/delegates/gpu/cl/buffer.cc \
	$(LOCAL_PATH)/../tensorflow/lite/delegates/gpu/cl/cl_arguments.cc \
	$(LOCAL_PATH)/../tensorflow/lite/delegates/gpu/cl/cl_command_buffer.cc \
	$(LOCAL_PATH)/../tensorflow/lite/delegates/gpu/cl/cl_command_queue.cc \
	$(LOCAL_PATH)/../tensorflow/lite/delegates/gpu/cl/cl_context.cc \
	$(LOCAL_PATH)/../tensorflow/lite/delegates/gpu/cl/cl_device.cc \
	$(LOCAL_PATH)/../tensorflow/lite/delegates/gpu/cl/cl_event.cc \
	$(LOCAL_PATH)/../tensorflow/lite/delegates/gpu/cl/cl_image_format.cc \
	$(LOCAL_PATH)/../tensorflow/lite/delegates/gpu/cl/cl_kernel.cc \
	$(LOCAL_PATH)/../tensorflow/lite/delegates/gpu/cl/cl_memory.cc \
	$(LOCAL_PATH)/../tensorflow/lite/delegates/gpu/cl/cl_operation.cc \
	$(LOCAL_PATH)/../tensorflow/lite/delegates/gpu/cl/cl_program.cc \
	$(LOCAL_PATH)/../tensorflow/lite/delegates/gpu/cl/default/recordable_queue.cc \
	$(LOCAL_PATH)/../tensorflow/lite/delegates/gpu/cl/default/util.cc \
	$(LOCAL_PATH)/../tensorflow/lite/delegates/gpu/cl/environment.cc \
	$(LOCAL_PATH)/../tensorflow/lite/delegates/gpu/cl/inference_context.cc \
	$(LOCAL_PATH)/../tensorflow/lite/delegates/gpu/cl/kernels/converter.cc \
	$(LOCAL_PATH)/../tensorflow/lite/delegates/gpu/cl/opencl_wrapper.cc \
	$(LOCAL_PATH)/../tensorflow/lite/delegates/gpu/cl/program_cache.cc \
	$(LOCAL_PATH)/../tensorflow/lite/delegates/gpu/cl/qcom_thin_filter.cc \
	$(LOCAL_PATH)/../tensorflow/lite/delegates/gpu/cl/tensor.cc \
	$(LOCAL_PATH)/../tensorflow/lite/delegates/gpu/cl/tensor_type_util.cc \
	$(LOCAL_PATH)/../tensorflow/lite/delegates/gpu/cl/util.cc \
	$(LOCAL_PATH)/../tensorflow/lite/delegates/gpu/common/convert.cc \
	$(LOCAL_PATH)/../tensorflow/lite/delegates/gpu/common/data_type.cc \
	$(LOCAL_PATH)/../tensorflow/lite/delegates/gpu/common/default/custom_parsers.cc \
	$(LOCAL_PATH)/../tensorflow/lite/delegates/gpu/common/default/custom_transformations.cc \
	$(LOCAL_PATH)/../tensorflow/lite/delegates/gpu/common/flops_util.cc \
	$(LOCAL_PATH)/../tensorflow/lite/delegates/gpu/common/gpu_info.cc \
	$(LOCAL_PATH)/../tensorflow/lite/delegates/gpu/common/gpu_model.cc \
	$(LOCAL_PATH)/../tensorflow/lite/delegates/gpu/common/lstm_parser.cc \
	$(LOCAL_PATH)/../tensorflow/lite/delegates/gpu/common/mediapipe/landmarks_to_transform_matrix.cc \
	$(LOCAL_PATH)/../tensorflow/lite/delegates/gpu/common/mediapipe/transform_landmarks.cc \
	$(LOCAL_PATH)/../tensorflow/lite/delegates/gpu/common/mediapipe/transform_tensor_bilinear.cc \
	$(LOCAL_PATH)/../tensorflow/lite/delegates/gpu/common/memory_management.cc \
	$(LOCAL_PATH)/../tensorflow/lite/delegates/gpu/common/memory_management/greedy_by_breadth_assignment.cc \
	$(LOCAL_PATH)/../tensorflow/lite/delegates/gpu/common/memory_management/greedy_by_size_assignment.cc \
	$(LOCAL_PATH)/../tensorflow/lite/delegates/gpu/common/memory_management/internal.cc \
	$(LOCAL_PATH)/../tensorflow/lite/delegates/gpu/common/memory_management/min_cost_flow_assignment.cc \
	$(LOCAL_PATH)/../tensorflow/lite/delegates/gpu/common/memory_management/types.cc \
	$(LOCAL_PATH)/../tensorflow/lite/delegates/gpu/common/model.cc \
	$(LOCAL_PATH)/../tensorflow/lite/delegates/gpu/common/model_builder.cc \
	$(LOCAL_PATH)/../tensorflow/lite/delegates/gpu/common/model_builder_helper.cc \
	$(LOCAL_PATH)/../tensorflow/lite/delegates/gpu/common/model_transformer.cc \
	$(LOCAL_PATH)/../tensorflow/lite/delegates/gpu/common/object_reader.cc \
	$(LOCAL_PATH)/../tensorflow/lite/delegates/gpu/common/operations.cc \
	$(LOCAL_PATH)/../tensorflow/lite/delegates/gpu/common/operation_parser.cc \
	$(LOCAL_PATH)/../tensorflow/lite/delegates/gpu/common/precision.cc \
	$(LOCAL_PATH)/../tensorflow/lite/delegates/gpu/common/quantization_util.cc \
	$(LOCAL_PATH)/../tensorflow/lite/delegates/gpu/common/selectors/default/convolution_selector.cc \
	$(LOCAL_PATH)/../tensorflow/lite/delegates/gpu/common/selectors/default/convolution_transposed_selector.cc \
	$(LOCAL_PATH)/../tensorflow/lite/delegates/gpu/common/selectors/default/default_selector.cc \
	$(LOCAL_PATH)/../tensorflow/lite/delegates/gpu/common/selectors/default/dw_convolution_selector.cc \
	$(LOCAL_PATH)/../tensorflow/lite/delegates/gpu/common/selectors/default/fully_connected_selector.cc \
	$(LOCAL_PATH)/../tensorflow/lite/delegates/gpu/common/selectors/operation_selector.cc \
	$(LOCAL_PATH)/../tensorflow/lite/delegates/gpu/common/selectors/simple_selectors.cc \
	$(LOCAL_PATH)/../tensorflow/lite/delegates/gpu/common/selectors/special_selector.cc \
	$(LOCAL_PATH)/../tensorflow/lite/delegates/gpu/common/selectors/subgraph.cc \
	$(LOCAL_PATH)/../tensorflow/lite/delegates/gpu/common/shape.cc \
	$(LOCAL_PATH)/../tensorflow/lite/delegates/gpu/common/tasks/add.cc \
	$(LOCAL_PATH)/../tensorflow/lite/delegates/gpu/common/tasks/cast.cc \
	$(LOCAL_PATH)/../tensorflow/lite/delegates/gpu/common/tasks/concat_xy.cc \
	$(LOCAL_PATH)/../tensorflow/lite/delegates/gpu/common/tasks/concat_z.cc \
	$(LOCAL_PATH)/../tensorflow/lite/delegates/gpu/common/tasks/conversion.cc \
	$(LOCAL_PATH)/../tensorflow/lite/delegates/gpu/common/tasks/convolution_transposed.cc \
	$(LOCAL_PATH)/../tensorflow/lite/delegates/gpu/common/tasks/convolution_transposed_3x3.cc \
	$(LOCAL_PATH)/../tensorflow/lite/delegates/gpu/common/tasks/convolution_transposed_3x3_thin.cc \
	$(LOCAL_PATH)/../tensorflow/lite/delegates/gpu/common/tasks/convolution_transposed_4x4.cc \
	$(LOCAL_PATH)/../tensorflow/lite/delegates/gpu/common/tasks/convolution_transposed_thin.cc \
	$(LOCAL_PATH)/../tensorflow/lite/delegates/gpu/common/tasks/conv_constants.cc \
	$(LOCAL_PATH)/../tensorflow/lite/delegates/gpu/common/tasks/conv_generic.cc \
	$(LOCAL_PATH)/../tensorflow/lite/delegates/gpu/common/tasks/conv_metal_simd.cc \
	$(LOCAL_PATH)/../tensorflow/lite/delegates/gpu/common/tasks/conv_weights_converter.cc \
	$(LOCAL_PATH)/../tensorflow/lite/delegates/gpu/common/tasks/cumsum.cc \
	$(LOCAL_PATH)/../tensorflow/lite/delegates/gpu/common/tasks/depthwise_conv.cc \
	$(LOCAL_PATH)/../tensorflow/lite/delegates/gpu/common/tasks/depthwise_conv_3x3.cc \
	$(LOCAL_PATH)/../tensorflow/lite/delegates/gpu/common/tasks/depthwise_conv_3x3_stride_h2.cc \
	$(LOCAL_PATH)/../tensorflow/lite/delegates/gpu/common/tasks/elementwise.cc \
	$(LOCAL_PATH)/../tensorflow/lite/delegates/gpu/common/tasks/fully_connected.cc \
	$(LOCAL_PATH)/../tensorflow/lite/delegates/gpu/common/tasks/gather.cc \
	$(LOCAL_PATH)/../tensorflow/lite/delegates/gpu/common/tasks/lstm.cc \
	$(LOCAL_PATH)/../tensorflow/lite/delegates/gpu/common/tasks/max_unpooling.cc \
	$(LOCAL_PATH)/../tensorflow/lite/delegates/gpu/common/tasks/mean_stddev_normalization.cc \
	$(LOCAL_PATH)/../tensorflow/lite/delegates/gpu/common/tasks/one_hot.cc \
	$(LOCAL_PATH)/../tensorflow/lite/delegates/gpu/common/tasks/padding.cc \
	$(LOCAL_PATH)/../tensorflow/lite/delegates/gpu/common/tasks/pooling.cc \
	$(LOCAL_PATH)/../tensorflow/lite/delegates/gpu/common/tasks/prelu.cc \
	$(LOCAL_PATH)/../tensorflow/lite/delegates/gpu/common/tasks/quantize_and_dequantize.cc \
	$(LOCAL_PATH)/../tensorflow/lite/delegates/gpu/common/tasks/reduce.cc \
	$(LOCAL_PATH)/../tensorflow/lite/delegates/gpu/common/tasks/relu.cc \
	$(LOCAL_PATH)/../tensorflow/lite/delegates/gpu/common/tasks/resampler.cc \
	$(LOCAL_PATH)/../tensorflow/lite/delegates/gpu/common/tasks/reshape.cc \
	$(LOCAL_PATH)/../tensorflow/lite/delegates/gpu/common/tasks/reshapex4.cc \
	$(LOCAL_PATH)/../tensorflow/lite/delegates/gpu/common/tasks/resize.cc \
	$(LOCAL_PATH)/../tensorflow/lite/delegates/gpu/common/tasks/select_v2.cc \
	$(LOCAL_PATH)/../tensorflow/lite/delegates/gpu/common/tasks/softmax.cc \
	$(LOCAL_PATH)/../tensorflow/lite/delegates/gpu/common/tasks/softmax1x1.cc \
	$(LOCAL_PATH)/../tensorflow/lite/delegates/gpu/common/tasks/space_to_depth.cc \
	$(LOCAL_PATH)/../tensorflow/lite/delegates/gpu/common/tasks/special/conv_pointwise.cc \
	$(LOCAL_PATH)/../tensorflow/lite/delegates/gpu/common/tasks/special/dw7x7_conv2to6_concat_conv8to8.cc \
	$(LOCAL_PATH)/../tensorflow/lite/delegates/gpu/common/tasks/special/fc_fc_add.cc \
	$(LOCAL_PATH)/../tensorflow/lite/delegates/gpu/common/tasks/special/thin_pointwise_fuser.cc \
	$(LOCAL_PATH)/../tensorflow/lite/delegates/gpu/common/tasks/split.cc \
	$(LOCAL_PATH)/../tensorflow/lite/delegates/gpu/common/tasks/strided_slice.cc \
	$(LOCAL_PATH)/../tensorflow/lite/delegates/gpu/common/tasks/tile.cc \
	$(LOCAL_PATH)/../tensorflow/lite/delegates/gpu/common/tasks/transpose.cc \
	$(LOCAL_PATH)/../tensorflow/lite/delegates/gpu/common/tasks/winograd.cc \
	$(LOCAL_PATH)/../tensorflow/lite/delegates/gpu/common/task/arguments.cc \
	$(LOCAL_PATH)/../tensorflow/lite/delegates/gpu/common/task/buffer_desc.cc \
	$(LOCAL_PATH)/../tensorflow/lite/delegates/gpu/common/task/gpu_operation.cc \
	$(LOCAL_PATH)/../tensorflow/lite/delegates/gpu/common/task/profiling_info.cc \
	$(LOCAL_PATH)/../tensorflow/lite/delegates/gpu/common/task/qcom_thin_filter_desc.cc \
	$(LOCAL_PATH)/../tensorflow/lite/delegates/gpu/common/task/serialization_base.cc \
	$(LOCAL_PATH)/../tensorflow/lite/delegates/gpu/common/task/tensor_desc.cc \
	$(LOCAL_PATH)/../tensorflow/lite/delegates/gpu/common/task/testing_util.cc \
	$(LOCAL_PATH)/../tensorflow/lite/delegates/gpu/common/task/util.cc \
	$(LOCAL_PATH)/../tensorflow/lite/delegates/gpu/common/task/weights_conversion.cc \
	$(LOCAL_PATH)/../tensorflow/lite/delegates/gpu/common/task/weights_layout.cc \
	$(LOCAL_PATH)/../tensorflow/lite/delegates/gpu/common/task/work_group_picking.cc \
	$(LOCAL_PATH)/../tensorflow/lite/delegates/gpu/common/transformations/add_bias.cc \
	$(LOCAL_PATH)/../tensorflow/lite/delegates/gpu/common/transformations/add_quant_adjustments.cc \
	$(LOCAL_PATH)/../tensorflow/lite/delegates/gpu/common/transformations/fuse_add_to_conv.cc \
	$(LOCAL_PATH)/../tensorflow/lite/delegates/gpu/common/transformations/fuse_mul_to_conv.cc \
	$(LOCAL_PATH)/../tensorflow/lite/delegates/gpu/common/transformations/global_pooling_to_reduce_op.cc \
	$(LOCAL_PATH)/../tensorflow/lite/delegates/gpu/common/transformations/make_fully_connected.cc \
	$(LOCAL_PATH)/../tensorflow/lite/delegates/gpu/common/transformations/make_padding.cc \
	$(LOCAL_PATH)/../tensorflow/lite/delegates/gpu/common/transformations/merge_densify.cc \
	$(LOCAL_PATH)/../tensorflow/lite/delegates/gpu/common/transformations/merge_padding_with.cc \
	$(LOCAL_PATH)/../tensorflow/lite/delegates/gpu/common/transformations/model_transformations.cc \
	$(LOCAL_PATH)/../tensorflow/lite/delegates/gpu/common/transformations/remove_noop.cc \
	$(LOCAL_PATH)/../tensorflow/lite/delegates/gpu/common/winograd_util.cc \
	$(LOCAL_PATH)/../tensorflow/lite/delegates/gpu/common/workgroup_selection.cc \
	$(LOCAL_PATH)/../tensorflow/lite/delegates/gpu/delegate.cc \
	$(LOCAL_PATH)/../tensorflow/lite/delegates/gpu/delegate_options.cc \
	$(LOCAL_PATH)/../tensorflow/lite/delegates/gpu/tflite_profile.cc \
	$(LOCAL_PATH)/../tensorflow/lite/delegates/interpreter_utils.cc \
	$(LOCAL_PATH)/../tensorflow/lite/delegates/nnapi/nnapi_delegate_disabled.cc \
	$(LOCAL_PATH)/../tensorflow/lite/delegates/serialization.cc \
	$(LOCAL_PATH)/../tensorflow/lite/delegates/telemetry.cc \
	$(LOCAL_PATH)/../tensorflow/lite/delegates/utils.cc \
	$(LOCAL_PATH)/../tensorflow/lite/delegates/xnnpack/file_util.cc \
	$(LOCAL_PATH)/../tensorflow/lite/delegates/xnnpack/quantization_util.cc \
	$(LOCAL_PATH)/../tensorflow/lite/delegates/xnnpack/weight_cache.cc \
	$(LOCAL_PATH)/../tensorflow/lite/delegates/xnnpack/xnnpack_delegate.cc \
	$(LOCAL_PATH)/../tensorflow/lite/experimental/acceleration/compatibility/android_info.cc \
	$(LOCAL_PATH)/../tensorflow/lite/experimental/resource/cache_buffer.cc \
	$(LOCAL_PATH)/../tensorflow/lite/experimental/resource/initialization_status.cc \
	$(LOCAL_PATH)/../tensorflow/lite/experimental/resource/resource_variable.cc \
	$(LOCAL_PATH)/../tensorflow/lite/experimental/resource/static_hashtable.cc \
	$(LOCAL_PATH)/../tensorflow/lite/external_cpu_backend_context.cc \
	$(LOCAL_PATH)/../tensorflow/lite/graph_info.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/activations.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/add.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/add_n.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/arg_min_max.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/assign_variable.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/atan2.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/atan2_custom.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/audio_spectrogram.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/basic_rnn.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/batch_matmul.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/batch_to_space_nd.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/bidirectional_sequence_lstm.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/bidirectional_sequence_rnn.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/bitcast.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/bitwise_xor.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/broadcast_args.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/broadcast_to.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/bucketize.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/call_once.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/cast.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/ceil.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/comparisons.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/complex_support.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/concatenation.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/control_flow_common.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/conv.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/conv3d.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/conv3d_transpose.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/cpu_backend_context.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/cpu_backend_gemm_eigen.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/cumsum.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/densify.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/deprecated_backends.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/depthwise_conv.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/depth_to_space.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/dequantize.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/detection_postprocess.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/dilate.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/div.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/dynamic_update_slice.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/eigen_support.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/elementwise.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/embedding_lookup.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/embedding_lookup_sparse.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/exp.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/expand_dims.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/fake_quant.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/fill.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/floor.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/floor_div.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/floor_mod.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/fully_connected.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/gather.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/gather_nd.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/gru_cell.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/hashtable.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/hashtable_find.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/hashtable_import.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/hashtable_lookup.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/hashtable_size.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/if.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/internal/common.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/internal/kernel_utils.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/internal/mfcc.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/internal/mfcc_dct.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/internal/mfcc_mel_filterbank.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/internal/opaque_tensor_ctypes.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/internal/optimized/4bit/fully_connected_reference.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/internal/optimized/cpu_check.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/internal/optimized/neon_tensor_utils.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/internal/optimized/sse_tensor_utils.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/internal/portable_tensor_utils.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/internal/quantization_util.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/internal/reference/comparisons.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/internal/reference/portable_tensor_utils.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/internal/runtime_shape.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/internal/spectrogram.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/internal/tensor_ctypes.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/internal/tensor_utils.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/internal/transpose_utils.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/internal/utils/sparsity_format_converter.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/irfft2d.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/kernel_util.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/l2norm.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/local_response_norm.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/logical.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/lsh_projection.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/lstm.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/lstm_eval.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/matrix_diag.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/matrix_set_diag.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/maximum_minimum.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/mfcc.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/mirror_pad.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/mul.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/multinomial.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/neg.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/non_max_suppression.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/numeric_verify.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/one_hot.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/pack.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/pad.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/pooling.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/pooling3d.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/pow.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/quantize.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/random_ops.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/random_standard_normal_custom.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/random_uniform_custom.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/range.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/rank.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/read_variable.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/reduce.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/register_ref.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/reshape.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/resize_bilinear.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/resize_nearest_neighbor.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/reverse.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/reverse_sequence.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/rfft2d.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/right_shift.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/rng_bit_generator.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/rng_util.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/roll.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/round.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/scatter_nd.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/segment_sum.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/select.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/shape.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/sign.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/sign_custom.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/skip_gram.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/slice.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/space_to_batch_nd.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/space_to_depth.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/sparse_to_dense.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/split.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/split_v.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/squared_difference.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/squeeze.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/stablehlo_add.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/stablehlo_and.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/stablehlo_composite.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/stablehlo_elementwise.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/stablehlo_gather.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/stablehlo_min_max.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/stablehlo_multiply.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/stablehlo_pad.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/stablehlo_reduce_window.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/stablehlo_scatter.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/stablehlo_shift_left.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/strided_slice.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/sub.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/svdf.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/table.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/tensor_slice_util.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/tile.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/topk_v2.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/transpose.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/transpose_conv.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/unidirectional_sequence_gru.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/unidirectional_sequence_lstm.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/unidirectional_sequence_rnn.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/unique.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/unpack.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/unsorted_segment.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/var_handle.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/where.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/while.cc \
	$(LOCAL_PATH)/../tensorflow/lite/kernels/zeros_like.cc \
	$(LOCAL_PATH)/../tensorflow/lite/logger.cc \
	$(LOCAL_PATH)/../tensorflow/lite/minimal_logging.cc \
	$(LOCAL_PATH)/../tensorflow/lite/minimal_logging_default.cc \
	$(LOCAL_PATH)/../tensorflow/lite/mutable_op_resolver.cc \
	$(LOCAL_PATH)/../tensorflow/lite/mutable_op_resolver_utils.cc \
	$(LOCAL_PATH)/../tensorflow/lite/nnapi/nnapi_implementation_disabled.cc \
	$(LOCAL_PATH)/../tensorflow/lite/optional_debug_tools.cc \
	$(LOCAL_PATH)/../tensorflow/lite/profiling/platform_profiler.cc \
	$(LOCAL_PATH)/../tensorflow/lite/profiling/root_profiler.cc \
	$(LOCAL_PATH)/../tensorflow/lite/profiling/telemetry/c/telemetry_setting_internal.cc \
	$(LOCAL_PATH)/../tensorflow/lite/profiling/telemetry/profiler.cc \
	$(LOCAL_PATH)/../tensorflow/lite/profiling/telemetry/telemetry.cc \
	$(LOCAL_PATH)/../tensorflow/lite/simple_memory_arena.cc \
	$(LOCAL_PATH)/../tensorflow/lite/simple_memory_arena_debug_dump.cc \
	$(LOCAL_PATH)/../tensorflow/lite/simple_planner.cc \
	$(LOCAL_PATH)/../tensorflow/lite/stderr_reporter.cc \
	$(LOCAL_PATH)/../tensorflow/lite/string_util.cc \
	$(LOCAL_PATH)/../tensorflow/lite/tensorflow_profiler_logger_shim.cc \
	$(LOCAL_PATH)/../tensorflow/lite/tflite_with_xnnpack_optional.cc \
	$(LOCAL_PATH)/../tensorflow/lite/tools/versioning/gpu_compatibility.cc \
	$(LOCAL_PATH)/../tensorflow/lite/tools/versioning/op_signature.cc \
	$(LOCAL_PATH)/../tensorflow/lite/util.cc

LOCAL_CFLAGS :=

ifeq (armeabi-v7a,$(TARGET_ARCH_ABI))
LOCAL_ARM_MODE := arm
LOCAL_ARM_NEON := true
else ifeq (arm64-v8a,$(TARGET_ARCH_ABI))
LOCAL_CFLAGS +=
else ifeq (x86,$(TARGET_ARCH_ABI))
LOCAL_CFLAGS += -mf16c
LOCAL_CFLAGS += -mfma
LOCAL_CFLAGS += -mavx2
else ifeq (x86_64,$(TARGET_ARCH_ABI))
LOCAL_CFLAGS += -mf16c
LOCAL_CFLAGS += -mfma
LOCAL_CFLAGS += -mavx2
else
LOCAL_CFLAGS +=
endif

LOCAL_CFLAGS += -Wall
LOCAL_CFLAGS += -Werror=return-type

LOCAL_CFLAGS += -DCL_DELEGATE_NO_GL
LOCAL_CFLAGS += -DTFLITE_KERNEL_USE_XNNPACK
LOCAL_CFLAGS += -DTFLITE_MMAP_DISABLED
LOCAL_CFLAGS += -DTF_LITE_DISABLE_X86_NEON
LOCAL_CFLAGS += -DTFL_STATIC_LIBRARY_BUILD
LOCAL_CFLAGS += -DEIGEN_NEON_GEBP_NR=4
LOCAL_CFLAGS += -DEIGEN_MPL2_ONLY
LOCAL_CFLAGS += -DXNN_ENABLE_ARM_FP16_VECTOR=0
LOCAL_CFLAGS += -DXNN_ENABLE_ARM_FP16_SCALAR=0
LOCAL_CFLAGS += -DXNN_ENABLE_ARM_BF16=0
LOCAL_CFLAGS += -DXNN_ENABLE_ARM_DOTPROD=0
LOCAL_CFLAGS += -DXNN_ENABLE_ARM_I8MM=0
LOCAL_CFLAGS += -DXNN_ENABLE_RISCV_VECTOR=1
LOCAL_CFLAGS += -DXNN_ENABLE_AVXVNNI=1
LOCAL_CFLAGS += -DXNN_ENABLE_AVXVNNIINT8=1
LOCAL_CFLAGS += -DXNN_ENABLE_AVX256SKX=1
LOCAL_CFLAGS += -DXNN_ENABLE_AVX256VNNI=1
LOCAL_CFLAGS += -DXNN_ENABLE_AVX256VNNIGFNI=1
LOCAL_CFLAGS += -DXNN_ENABLE_AVX512VNNIGFNI=1
LOCAL_CFLAGS += -DXNN_ENABLE_AVX512AMX=1
LOCAL_CFLAGS += -DXNN_ENABLE_AVX512FP16=1
LOCAL_CFLAGS += -DXNN_ENABLE_VSX=1
LOCAL_CFLAGS += -DXNN_ENABLE_ASSEMBLY=1
LOCAL_CFLAGS += -DXNN_ENABLE_MEMOPT=1
LOCAL_CFLAGS += -DXNN_ENABLE_SPARSE=1
LOCAL_CFLAGS += -DXNN_ENABLE_GEMM_M_SPECIALIZATION=1
LOCAL_CFLAGS += -DXNN_ENABLE_DWCONV_MULTIPASS=0
LOCAL_CFLAGS += -DXNN_ENABLE_HVX=1
LOCAL_CFLAGS += -DXNN_ENABLE_KLEIDIAI=0
LOCAL_CFLAGS += -DXNN_ENABLE_CPUINFO=1
LOCAL_CFLAGS += -DXNN_LOG_LEVEL=4
LOCAL_CFLAGS += -DFXDIV_USE_INLINE_ASSEMBLY=0
LOCAL_CFLAGS += -DPTHREADPOOL_NO_DEPRECATED_API=1
LOCAL_CFLAGS += -DCPUINFO_SUPPORTED_PLATFORM=1
LOCAL_CFLAGS += -DCPUINFO_LOG_TO_STDIO=1
LOCAL_CFLAGS += -DCPUINFO_LOG_LEVEL=2
LOCAL_CFLAGS += -DGOOGLE_PROTOBUF_CMAKE_BUILD=1
LOCAL_CFLAGS += -DFLATBUFFERS_LOCALE_INDEPENDENT=1

LOCAL_C_INCLUDES :=
LOCAL_C_INCLUDES += $(LOCAL_PATH)/..
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../tensorflow/lite/delegates/gpu/common
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../tensorflow/lite/delegates/gpu/common/task
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../third_party/xla
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../proto-cpp-out
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../flat-cpp-out
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../../gemmlowp
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../../XNNPACK/include
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../../FP16/include
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../../FXdiv/include
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../../pthreadpool/include
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../../cpuinfo/include
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../../protobuf/src
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../../flatbuffers/include
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../../eigen
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../../ruy
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../../abseil-cpp
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../../farmhash/src
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../../OpenCL-Headers
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../../Vulkan-Headers/include

LOCAL_CPPFLAGS := 
LOCAL_CPPFLAGS += -std=c++20

LOCAL_CPP_FEATURES := 
LOCAL_CPP_FEATURES += rtti

include $(BUILD_STATIC_LIBRARY)

include $(CLEAR_VARS)

LOCAL_MODULE := tensorflow-lite-c

LOCAL_SRC_FILES := \
	$(LOCAL_PATH)/../tensorflow/lite/delegates/gpu/delegate.cc \
	$(LOCAL_PATH)/../tensorflow/lite/delegates/xnnpack/xnnpack_delegate.cc \
	$(LOCAL_PATH)/../tensorflow/lite/core/c/common.cc \
	$(LOCAL_PATH)/../tensorflow/lite/core/c/c_api.cc \
	$(LOCAL_PATH)/../tensorflow/lite/core/c/c_api_experimental.cc \
	$(LOCAL_PATH)/../tensorflow/lite/core/c/c_api_opaque.cc \
	$(LOCAL_PATH)/../tensorflow/lite/core/c/operator.cc \
	$(LOCAL_PATH)/../tensorflow/lite/c/common_internal.cc \
	$(LOCAL_PATH)/../tensorflow/lite/c/c_api_for_testing.cc \
	$(LOCAL_PATH)/../tensorflow/lite/c/c_api_opaque_internal.cc

LOCAL_CFLAGS :=

ifeq (armeabi-v7a,$(TARGET_ARCH_ABI))
LOCAL_ARM_MODE := arm
LOCAL_ARM_NEON := true
else ifeq (arm64-v8a,$(TARGET_ARCH_ABI))
LOCAL_CFLAGS +=
else ifeq (x86,$(TARGET_ARCH_ABI))
LOCAL_CFLAGS += -mf16c
LOCAL_CFLAGS += -mfma
LOCAL_CFLAGS += -mavx2
else ifeq (x86_64,$(TARGET_ARCH_ABI))
LOCAL_CFLAGS += -mf16c
LOCAL_CFLAGS += -mfma
LOCAL_CFLAGS += -mavx2
else
LOCAL_CFLAGS +=
endif

LOCAL_CFLAGS += -Wall
LOCAL_CFLAGS += -Werror=return-type

LOCAL_CFLAGS += -DCL_DELEGATE_NO_GL
LOCAL_CFLAGS += -DTFLITE_KERNEL_USE_XNNPACK
LOCAL_CFLAGS += -DTFLITE_MMAP_DISABLED
LOCAL_CFLAGS += -DTF_LITE_DISABLE_X86_NEON
LOCAL_CFLAGS += -DTFL_STATIC_LIBRARY_BUILD
LOCAL_CFLAGS += -DEIGEN_NEON_GEBP_NR=4
LOCAL_CFLAGS += -DEIGEN_MPL2_ONLY
LOCAL_CFLAGS += -DXNN_ENABLE_ARM_FP16_VECTOR=0
LOCAL_CFLAGS += -DXNN_ENABLE_ARM_FP16_SCALAR=0
LOCAL_CFLAGS += -DXNN_ENABLE_ARM_BF16=0
LOCAL_CFLAGS += -DXNN_ENABLE_ARM_DOTPROD=0
LOCAL_CFLAGS += -DXNN_ENABLE_ARM_I8MM=0
LOCAL_CFLAGS += -DXNN_ENABLE_RISCV_VECTOR=1
LOCAL_CFLAGS += -DXNN_ENABLE_AVXVNNI=1
LOCAL_CFLAGS += -DXNN_ENABLE_AVXVNNIINT8=1
LOCAL_CFLAGS += -DXNN_ENABLE_AVX256SKX=1
LOCAL_CFLAGS += -DXNN_ENABLE_AVX256VNNI=1
LOCAL_CFLAGS += -DXNN_ENABLE_AVX256VNNIGFNI=1
LOCAL_CFLAGS += -DXNN_ENABLE_AVX512VNNIGFNI=1
LOCAL_CFLAGS += -DXNN_ENABLE_AVX512AMX=1
LOCAL_CFLAGS += -DXNN_ENABLE_AVX512FP16=1
LOCAL_CFLAGS += -DXNN_ENABLE_VSX=1
LOCAL_CFLAGS += -DXNN_ENABLE_ASSEMBLY=1
LOCAL_CFLAGS += -DXNN_ENABLE_MEMOPT=1
LOCAL_CFLAGS += -DXNN_ENABLE_SPARSE=1
LOCAL_CFLAGS += -DXNN_ENABLE_GEMM_M_SPECIALIZATION=1
LOCAL_CFLAGS += -DXNN_ENABLE_DWCONV_MULTIPASS=0
LOCAL_CFLAGS += -DXNN_ENABLE_HVX=1
LOCAL_CFLAGS += -DXNN_ENABLE_KLEIDIAI=0
LOCAL_CFLAGS += -DXNN_ENABLE_CPUINFO=1
LOCAL_CFLAGS += -DXNN_LOG_LEVEL=4
LOCAL_CFLAGS += -DFXDIV_USE_INLINE_ASSEMBLY=0
LOCAL_CFLAGS += -DPTHREADPOOL_NO_DEPRECATED_API=1
LOCAL_CFLAGS += -DCPUINFO_SUPPORTED_PLATFORM=1
LOCAL_CFLAGS += -DCPUINFO_LOG_TO_STDIO=1
LOCAL_CFLAGS += -DCPUINFO_LOG_LEVEL=2
LOCAL_CFLAGS += -DGOOGLE_PROTOBUF_CMAKE_BUILD=1
LOCAL_CFLAGS += -DFLATBUFFERS_LOCALE_INDEPENDENT=1

LOCAL_C_INCLUDES :=
LOCAL_C_INCLUDES += $(LOCAL_PATH)/..
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../tensorflow/lite/delegates/gpu/common
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../tensorflow/lite/delegates/gpu/common/task
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../third_party/xla
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../proto-cpp-out
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../flat-cpp-out
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../../gemmlowp
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../../XNNPACK/include
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../../FP16/include
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../../FXdiv/include
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../../pthreadpool/include
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../../cpuinfo/include
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../../protobuf/src
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../../flatbuffers/include
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../../eigen
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../../ruy
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../../abseil-cpp
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../../farmhash/src
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../../OpenCL-Headers
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../../Vulkan-Headers/include

LOCAL_CPPFLAGS := 
LOCAL_CPPFLAGS += -std=c++20

LOCAL_CPP_FEATURES := 
LOCAL_CPP_FEATURES += rtti

LOCAL_LDFLAGS :=
LOCAL_LDFLAGS += -Wl,--enable-new-dtags
LOCAL_LDFLAGS += -Wl,-rpath,\$$ORIGIN
LOCAL_LDFLAGS += -Wl,--version-script,$(LOCAL_PATH)/tensorflow-lite-c.map

LOCAL_LDFLAGS += -ldl

LOCAL_STATIC_LIBRARIES :=
LOCAL_STATIC_LIBRARIES += tensorflow-lite
LOCAL_STATIC_LIBRARIES += flatbuffers
LOCAL_STATIC_LIBRARIES += abseil-cpp
LOCAL_STATIC_LIBRARIES += XNNPACK-BASELINE
LOCAL_STATIC_LIBRARIES += XNNPACK-DISPATCH

include $(BUILD_SHARED_LIBRARY)
