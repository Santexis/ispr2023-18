; ModuleID = 'C:/Xilinx/ejercicio_ledMatrix/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-f80:128:128-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S32"
target triple = "i686-pc-mingw32"

@ws2812_str = internal unnamed_addr constant [7 x i8] c"ws2812\00"
@odd_column = internal unnamed_addr global i1 false, align 1
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@p_str9 = private unnamed_addr constant [11 x i8] c"loop_reset\00", align 1
@p_str8 = private unnamed_addr constant [14 x i8] c"loop_column_1\00", align 1
@p_str7 = private unnamed_addr constant [14 x i8] c"loop_column_0\00", align 1
@p_str6 = private unnamed_addr constant [11 x i8] c"ap_ctrl_hs\00", align 1
@p_str5 = private unnamed_addr constant [5 x i8] c"both\00", align 1
@p_str4 = private unnamed_addr constant [5 x i8] c"axis\00", align 1
@p_str3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str2 = private unnamed_addr constant [8 x i8] c"ap_none\00", align 1
@p_str1 = private unnamed_addr constant [9 x i8] c"loop_led\00", align 1
@p_str = private unnamed_addr constant [12 x i8] c"loop_symbol\00", align 1

define internal fastcc void @ws2812_led(i24 %led_V, i1* nocapture %out_V) {
  %led_V_read = call i24 @_ssdm_op_Read.ap_auto.i24(i24 %led_V)
  br label %ws2812_symbol.exit

ws2812_symbol.exit.loopexit:                      ; preds = %2
  br label %ws2812_symbol.exit

ws2812_symbol.exit:                               ; preds = %ws2812_symbol.exit.loopexit, %0
  %i = phi i5 [ 0, %0 ], [ %i_1, %ws2812_symbol.exit.loopexit ]
  %exitcond = icmp eq i5 %i, -8
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 24, i64 24, i64 24)
  %i_1 = add i5 %i, 1
  br i1 %exitcond, label %4, label %1

; <label>:1                                       ; preds = %ws2812_symbol.exit
  call void (...)* @_ssdm_op_SpecLoopName([9 x i8]* @p_str1) nounwind
  %bvh_d_index = sub i5 -9, %i
  %index_assign_cast = zext i5 %bvh_d_index to i32
  %tmp = call i1 @_ssdm_op_BitSelect.i1.i24.i32(i24 %led_V_read, i32 %index_assign_cast)
  %p_i_cast = select i1 %tmp, i7 -43, i7 40
  br label %2

; <label>:2                                       ; preds = %3, %1
  %i_i = phi i7 [ 0, %1 ], [ %i_2, %3 ]
  %exitcond_i = icmp eq i7 %i_i, -3
  %empty_4 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 125, i64 125, i64 125)
  %i_2 = add i7 %i_i, 1
  br i1 %exitcond_i, label %ws2812_symbol.exit.loopexit, label %3

; <label>:3                                       ; preds = %2
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @p_str) nounwind
  %tmp_i = icmp ult i7 %i_i, %p_i_cast
  call void @_ssdm_op_Write.ap_auto.i1P(i1* %out_V, i1 %tmp_i)
  br label %2

; <label>:4                                       ; preds = %ws2812_symbol.exit
  ret void
}

define void @ws2812(i256* %stream_V_data_V, i32* %stream_V_keep_V, i32* %stream_V_strb_V, i1* %stream_V_user_V, i1* %stream_V_last_V, i1* %stream_V_id_V, i1* %stream_V_dest_V, i1* %out_V) {
  call void (...)* @_ssdm_op_SpecBitsMap(i256* %stream_V_data_V), !map !63
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %stream_V_keep_V), !map !67
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %stream_V_strb_V), !map !71
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %stream_V_user_V), !map !75
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %stream_V_last_V), !map !79
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %stream_V_id_V), !map !83
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %stream_V_dest_V), !map !87
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %out_V), !map !91
  call void (...)* @_ssdm_op_SpecTopModule([7 x i8]* @ws2812_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i1* %out_V, [8 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str3, [1 x i8]* @p_str3, [1 x i8]* @p_str3, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str3, [1 x i8]* @p_str3) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i256* %stream_V_data_V, i32* %stream_V_keep_V, i32* %stream_V_strb_V, i1* %stream_V_user_V, i1* %stream_V_last_V, i1* %stream_V_id_V, i1* %stream_V_dest_V, [5 x i8]* @p_str4, i32 1, i32 1, [5 x i8]* @p_str5, i32 0, i32 0, [1 x i8]* @p_str3, [1 x i8]* @p_str3, [1 x i8]* @p_str3, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str3, [1 x i8]* @p_str3) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [11 x i8]* @p_str6, i32 0, i32 0, [1 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str3, [1 x i8]* @p_str3, [1 x i8]* @p_str3, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str3, [1 x i8]* @p_str3) nounwind
  %empty = call { i256, i32, i32, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.i256P.i32P.i32P.i1P.i1P.i1P.i1P(i256* %stream_V_data_V, i32* %stream_V_keep_V, i32* %stream_V_strb_V, i1* %stream_V_user_V, i1* %stream_V_last_V, i1* %stream_V_id_V, i1* %stream_V_dest_V)
  %tmp_data_V = extractvalue { i256, i32, i32, i1, i1, i1, i1 } %empty, 0
  %tmp_last_V = extractvalue { i256, i32, i32, i1, i1, i1, i1 } %empty, 4
  %odd_column_load = load i1* @odd_column, align 1
  br i1 %odd_column_load, label %.preheader.preheader, label %.preheader65.preheader

.preheader65.preheader:                           ; preds = %0
  br label %.preheader65

.preheader.preheader:                             ; preds = %0
  br label %.preheader

.preheader65:                                     ; preds = %.preheader65.preheader, %1
  %i = phi i4 [ %i_4, %1 ], [ 0, %.preheader65.preheader ]
  %exitcond1 = icmp eq i4 %i, -8
  %empty_5 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8)
  %i_4 = add i4 %i, 1
  br i1 %exitcond1, label %.loopexit64.loopexit5, label %1

; <label>:1                                       ; preds = %.preheader65
  call void (...)* @_ssdm_op_SpecLoopName([14 x i8]* @p_str7) nounwind
  %tmp_19 = trunc i4 %i to i3
  %Lo_assign = call i8 @_ssdm_op_BitConcatenate.i8.i3.i5(i3 %tmp_19, i5 0)
  %Hi_assign = or i8 %Lo_assign, 23
  %tmp_20 = icmp ugt i8 %Lo_assign, %Hi_assign
  %tmp_21 = zext i8 %Lo_assign to i9
  %tmp_22 = zext i8 %Hi_assign to i9
  %tmp_23 = call i256 @llvm.part.select.i256(i256 %tmp_data_V, i32 255, i32 0)
  %tmp_24 = sub i9 %tmp_21, %tmp_22
  %tmp_25 = xor i9 %tmp_21, 255
  %tmp_26 = sub i9 %tmp_22, %tmp_21
  %tmp_27 = select i1 %tmp_20, i9 %tmp_24, i9 %tmp_26
  %tmp_28 = select i1 %tmp_20, i256 %tmp_23, i256 %tmp_data_V
  %tmp_29 = select i1 %tmp_20, i9 %tmp_25, i9 %tmp_21
  %tmp_30 = sub i9 255, %tmp_27
  %tmp_31 = zext i9 %tmp_29 to i256
  %tmp_32 = zext i9 %tmp_30 to i256
  %tmp_33 = lshr i256 %tmp_28, %tmp_31
  %tmp_34 = lshr i256 -1, %tmp_32
  %p_Result_s = and i256 %tmp_33, %tmp_34
  %tmp_36 = trunc i256 %p_Result_s to i24
  call fastcc void @ws2812_led(i24 %tmp_36, i1* %out_V)
  br label %.preheader65

.preheader:                                       ; preds = %.preheader.preheader, %2
  %i1 = phi i4 [ %i_3, %2 ], [ 7, %.preheader.preheader ]
  %tmp = call i1 @_ssdm_op_BitSelect.i1.i4.i32(i4 %i1, i32 3)
  %empty_6 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8)
  br i1 %tmp, label %.loopexit64.loopexit, label %2

; <label>:2                                       ; preds = %.preheader
  call void (...)* @_ssdm_op_SpecLoopName([14 x i8]* @p_str8) nounwind
  %tmp_1 = trunc i4 %i1 to i3
  %Lo_assign_2 = call i8 @_ssdm_op_BitConcatenate.i8.i3.i5(i3 %tmp_1, i5 0)
  %Hi_assign_2 = or i8 %Lo_assign_2, 23
  %tmp_2 = icmp ugt i8 %Lo_assign_2, %Hi_assign_2
  %tmp_3 = zext i8 %Lo_assign_2 to i9
  %tmp_4 = zext i8 %Hi_assign_2 to i9
  %tmp_5 = call i256 @llvm.part.select.i256(i256 %tmp_data_V, i32 255, i32 0)
  %tmp_6 = sub i9 %tmp_3, %tmp_4
  %tmp_7 = xor i9 %tmp_3, 255
  %tmp_8 = sub i9 %tmp_4, %tmp_3
  %tmp_9 = select i1 %tmp_2, i9 %tmp_6, i9 %tmp_8
  %tmp_10 = select i1 %tmp_2, i256 %tmp_5, i256 %tmp_data_V
  %tmp_11 = select i1 %tmp_2, i9 %tmp_7, i9 %tmp_3
  %tmp_12 = sub i9 255, %tmp_9
  %tmp_13 = zext i9 %tmp_11 to i256
  %tmp_14 = zext i9 %tmp_12 to i256
  %tmp_15 = lshr i256 %tmp_10, %tmp_13
  %tmp_16 = lshr i256 -1, %tmp_14
  %p_Result_1 = and i256 %tmp_15, %tmp_16
  %tmp_18 = trunc i256 %p_Result_1 to i24
  call fastcc void @ws2812_led(i24 %tmp_18, i1* %out_V)
  %i_3 = add i4 -1, %i1
  br label %.preheader

.loopexit64.loopexit:                             ; preds = %.preheader
  br label %.loopexit64

.loopexit64.loopexit5:                            ; preds = %.preheader65
  br label %.loopexit64

.loopexit64:                                      ; preds = %.loopexit64.loopexit5, %.loopexit64.loopexit
  %tmp_s = xor i1 %odd_column_load, true
  br i1 %tmp_last_V, label %.preheader8.preheader, label %mergeST

.preheader8.preheader:                            ; preds = %.loopexit64
  br label %.preheader8

.preheader8:                                      ; preds = %.preheader8.preheader, %3
  %i2 = phi i13 [ %i_5, %3 ], [ 0, %.preheader8.preheader ]
  %exitcond = icmp eq i13 %i2, -3192
  %empty_7 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 5000, i64 5000, i64 5000)
  %i_5 = add i13 %i2, 1
  br i1 %exitcond, label %mergeST.loopexit, label %3

; <label>:3                                       ; preds = %.preheader8
  call void (...)* @_ssdm_op_SpecLoopName([11 x i8]* @p_str9) nounwind
  call void @_ssdm_op_Write.ap_none.i1P(i1* %out_V, i1 false)
  br label %.preheader8

mergeST.loopexit:                                 ; preds = %.preheader8
  br label %mergeST

mergeST:                                          ; preds = %mergeST.loopexit, %.loopexit64
  %odd_column_new = phi i1 [ %tmp_s, %.loopexit64 ], [ false, %mergeST.loopexit ]
  store i1 %odd_column_new, i1* @odd_column, align 1
  ret void
}

declare i256 @llvm.part.select.i256(i256, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define weak void @_ssdm_op_Write.ap_none.i1P(i1*, i1) {
entry:
  store i1 %1, i1* %0
  ret void
}

define weak void @_ssdm_op_Write.ap_auto.i1P(i1*, i1) {
entry:
  store i1 %1, i1* %0
  ret void
}

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecLoopName(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak { i256, i32, i32, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.i256P.i32P.i32P.i1P.i1P.i1P.i1P(i256*, i32*, i32*, i1*, i1*, i1*, i1*) {
entry:
  %empty = load i256* %0
  %empty_8 = load i32* %1
  %empty_9 = load i32* %2
  %empty_10 = load i1* %3
  %empty_11 = load i1* %4
  %empty_12 = load i1* %5
  %empty_13 = load i1* %6
  %mrv_0 = insertvalue { i256, i32, i32, i1, i1, i1, i1 } undef, i256 %empty, 0
  %mrv1 = insertvalue { i256, i32, i32, i1, i1, i1, i1 } %mrv_0, i32 %empty_8, 1
  %mrv2 = insertvalue { i256, i32, i32, i1, i1, i1, i1 } %mrv1, i32 %empty_9, 2
  %mrv3 = insertvalue { i256, i32, i32, i1, i1, i1, i1 } %mrv2, i1 %empty_10, 3
  %mrv4 = insertvalue { i256, i32, i32, i1, i1, i1, i1 } %mrv3, i1 %empty_11, 4
  %mrv5 = insertvalue { i256, i32, i32, i1, i1, i1, i1 } %mrv4, i1 %empty_12, 5
  %mrv6 = insertvalue { i256, i32, i32, i1, i1, i1, i1 } %mrv5, i1 %empty_13, 6
  ret { i256, i32, i32, i1, i1, i1, i1 } %mrv6
}

define weak i24 @_ssdm_op_Read.ap_auto.i24(i24) {
entry:
  ret i24 %0
}

declare i3 @_ssdm_op_PartSelect.i3.i4.i32.i32(i4, i32, i32) nounwind readnone

declare i24 @_ssdm_op_PartSelect.i24.i256.i32.i32(i256, i32, i32) nounwind readnone

define weak i1 @_ssdm_op_BitSelect.i1.i4.i32(i4, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i4
  %empty_14 = shl i4 1, %empty
  %empty_15 = and i4 %0, %empty_14
  %empty_16 = icmp ne i4 %empty_15, 0
  ret i1 %empty_16
}

define weak i1 @_ssdm_op_BitSelect.i1.i24.i32(i24, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i24
  %empty_17 = shl i24 1, %empty
  %empty_18 = and i24 %0, %empty_17
  %empty_19 = icmp ne i24 %empty_18, 0
  ret i1 %empty_19
}

define weak i8 @_ssdm_op_BitConcatenate.i8.i3.i5(i3, i5) nounwind readnone {
entry:
  %empty = zext i3 %0 to i8
  %empty_20 = zext i5 %1 to i8
  %empty_21 = shl i8 %empty, 5
  %empty_22 = or i8 %empty_21, %empty_20
  ret i8 %empty_22
}

declare void @_GLOBAL__I_a() nounwind

!opencl.kernels = !{!0, !7, !10, !13, !19, !19, !19, !13, !13, !13, !13, !13, !25, !29, !29, !13, !13, !13, !13, !13, !13, !13, !13, !13, !13, !13, !13, !13, !35, !35, !35, !13, !37, !40, !40, !44, !44, !46, !49, !52, !52, !13, !54}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!56}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 1}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"ap_uint<1>", metadata !"ap_uint<1>*"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"bit", metadata !"out"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !1, metadata !2, metadata !8, metadata !4, metadata !9, metadata !6}
!8 = metadata !{metadata !"kernel_arg_type", metadata !"ap_uint<24>", metadata !"ap_uint<1>*"}
!9 = metadata !{metadata !"kernel_arg_name", metadata !"led", metadata !"out"}
!10 = metadata !{null, metadata !1, metadata !2, metadata !11, metadata !4, metadata !12, metadata !6}
!11 = metadata !{metadata !"kernel_arg_type", metadata !"hls::stream<axi_data_t> &", metadata !"ap_uint<1>*"}
!12 = metadata !{metadata !"kernel_arg_name", metadata !"stream", metadata !"out"}
!13 = metadata !{null, metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !6}
!14 = metadata !{metadata !"kernel_arg_addr_space"}
!15 = metadata !{metadata !"kernel_arg_access_qual"}
!16 = metadata !{metadata !"kernel_arg_type"}
!17 = metadata !{metadata !"kernel_arg_type_qual"}
!18 = metadata !{metadata !"kernel_arg_name"}
!19 = metadata !{null, metadata !20, metadata !21, metadata !22, metadata !23, metadata !24, metadata !6}
!20 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!21 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!22 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<256, false> &"}
!23 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!24 = metadata !{metadata !"kernel_arg_name", metadata !"ref"}
!25 = metadata !{null, metadata !26, metadata !2, metadata !27, metadata !4, metadata !28, metadata !6}
!26 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!27 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"int"}
!28 = metadata !{metadata !"kernel_arg_name", metadata !"Hi", metadata !"Lo"}
!29 = metadata !{null, metadata !30, metadata !31, metadata !32, metadata !33, metadata !34, metadata !6}
!30 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0, i32 0}
!31 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!32 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<256, false>*", metadata !"int", metadata !"int"}
!33 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!34 = metadata !{metadata !"kernel_arg_name", metadata !"bv", metadata !"h", metadata !"l"}
!35 = metadata !{null, metadata !20, metadata !21, metadata !36, metadata !23, metadata !24, metadata !6}
!36 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_bit_ref<24, false> &"}
!37 = metadata !{null, metadata !20, metadata !21, metadata !38, metadata !23, metadata !39, metadata !6}
!38 = metadata !{metadata !"kernel_arg_type", metadata !"int"}
!39 = metadata !{metadata !"kernel_arg_name", metadata !"index"}
!40 = metadata !{null, metadata !41, metadata !2, metadata !42, metadata !4, metadata !43, metadata !6}
!41 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0}
!42 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<24, false>*", metadata !"int"}
!43 = metadata !{metadata !"kernel_arg_name", metadata !"bv", metadata !"index"}
!44 = metadata !{null, metadata !20, metadata !21, metadata !38, metadata !23, metadata !45, metadata !6}
!45 = metadata !{metadata !"kernel_arg_name", metadata !"val"}
!46 = metadata !{null, metadata !20, metadata !21, metadata !47, metadata !23, metadata !48, metadata !6}
!47 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<1> &"}
!48 = metadata !{metadata !"kernel_arg_name", metadata !"op2"}
!49 = metadata !{null, metadata !26, metadata !2, metadata !50, metadata !4, metadata !51, metadata !6}
!50 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1, false> &", metadata !"int"}
!51 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"op2"}
!52 = metadata !{null, metadata !20, metadata !21, metadata !38, metadata !23, metadata !53, metadata !6}
!53 = metadata !{metadata !"kernel_arg_name", metadata !"op"}
!54 = metadata !{null, metadata !20, metadata !21, metadata !55, metadata !23, metadata !48, metadata !6}
!55 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &"}
!56 = metadata !{metadata !57, [1 x i32]* @llvm_global_ctors_0}
!57 = metadata !{metadata !58}
!58 = metadata !{i32 0, i32 31, metadata !59}
!59 = metadata !{metadata !60}
!60 = metadata !{metadata !"llvm.global_ctors.0", metadata !61, metadata !"", i32 0, i32 31}
!61 = metadata !{metadata !62}
!62 = metadata !{i32 0, i32 0, i32 1}
!63 = metadata !{metadata !64}
!64 = metadata !{i32 0, i32 255, metadata !65}
!65 = metadata !{metadata !66}
!66 = metadata !{metadata !"stream.V.data.V", metadata !61, metadata !"uint256", i32 0, i32 255}
!67 = metadata !{metadata !68}
!68 = metadata !{i32 0, i32 31, metadata !69}
!69 = metadata !{metadata !70}
!70 = metadata !{metadata !"stream.V.keep.V", metadata !61, metadata !"uint32", i32 0, i32 31}
!71 = metadata !{metadata !72}
!72 = metadata !{i32 0, i32 31, metadata !73}
!73 = metadata !{metadata !74}
!74 = metadata !{metadata !"stream.V.strb.V", metadata !61, metadata !"uint32", i32 0, i32 31}
!75 = metadata !{metadata !76}
!76 = metadata !{i32 0, i32 0, metadata !77}
!77 = metadata !{metadata !78}
!78 = metadata !{metadata !"stream.V.user.V", metadata !61, metadata !"uint1", i32 0, i32 0}
!79 = metadata !{metadata !80}
!80 = metadata !{i32 0, i32 0, metadata !81}
!81 = metadata !{metadata !82}
!82 = metadata !{metadata !"stream.V.last.V", metadata !61, metadata !"uint1", i32 0, i32 0}
!83 = metadata !{metadata !84}
!84 = metadata !{i32 0, i32 0, metadata !85}
!85 = metadata !{metadata !86}
!86 = metadata !{metadata !"stream.V.id.V", metadata !61, metadata !"uint1", i32 0, i32 0}
!87 = metadata !{metadata !88}
!88 = metadata !{i32 0, i32 0, metadata !89}
!89 = metadata !{metadata !90}
!90 = metadata !{metadata !"stream.V.dest.V", metadata !61, metadata !"uint1", i32 0, i32 0}
!91 = metadata !{metadata !92}
!92 = metadata !{i32 0, i32 0, metadata !93}
!93 = metadata !{metadata !94}
!94 = metadata !{metadata !"out.V", metadata !61, metadata !"uint1", i32 0, i32 0}
