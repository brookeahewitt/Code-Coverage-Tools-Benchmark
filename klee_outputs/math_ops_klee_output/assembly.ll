; ModuleID = '/home/brooke/Code-Coverage-Tools-Benchmark/klee_build/math_ops_klee.bc'
source_filename = "/home/brooke/Code-Coverage-Tools-Benchmark/klee_tests/math_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [32 x i8] c"Integer Addition: %d + %d = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Integer Multiplication: %d * %d = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Integer Division: %d / %d = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"Integer Division: Division by zero skipped\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"Floating-Point Addition: %f + %f = %f\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"Floating-Point Multiplication: %f * %f = %f\0A\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"Sine(%f) = %f\0A\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.10 = private unnamed_addr constant [58 x i8] c"/home/brooke/klee/runtime/Intrinsic/klee_div_zero_check.c\00", align 1
@.str.1.11 = private unnamed_addr constant [15 x i8] c"divide by zero\00", align 1
@.str.2.12 = private unnamed_addr constant [8 x i8] c"div.err\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @math_test(i32 noundef %0, i32 noundef %1, double noundef %2) #0 !dbg !12 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !19, metadata !DIExpression()), !dbg !20
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !21, metadata !DIExpression()), !dbg !22
  store double %2, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !23, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata i32* %7, metadata !25, metadata !DIExpression()), !dbg !26
  %11 = load i32, i32* %4, align 4, !dbg !27
  %12 = load i32, i32* %5, align 4, !dbg !28
  %13 = add nsw i32 %11, %12, !dbg !29
  store i32 %13, i32* %7, align 4, !dbg !26
  call void @llvm.dbg.declare(metadata i32* %8, metadata !30, metadata !DIExpression()), !dbg !31
  %14 = load i32, i32* %4, align 4, !dbg !32
  %15 = load i32, i32* %5, align 4, !dbg !33
  %16 = mul nsw i32 %14, %15, !dbg !34
  store i32 %16, i32* %8, align 4, !dbg !31
  %17 = load i32, i32* %4, align 4, !dbg !35
  %18 = load i32, i32* %5, align 4, !dbg !36
  %19 = load i32, i32* %7, align 4, !dbg !37
  %20 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 noundef %17, i32 noundef %18, i32 noundef %19), !dbg !38
  %21 = load i32, i32* %4, align 4, !dbg !39
  %22 = load i32, i32* %5, align 4, !dbg !40
  %23 = load i32, i32* %8, align 4, !dbg !41
  %24 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 noundef %21, i32 noundef %22, i32 noundef %23), !dbg !42
  %25 = load i32, i32* %5, align 4, !dbg !43
  %26 = icmp ne i32 %25, 0, !dbg !45
  br i1 %26, label %27, label %34, !dbg !46

27:                                               ; preds = %3
  %28 = load i32, i32* %4, align 4, !dbg !47
  %29 = load i32, i32* %5, align 4, !dbg !49
  %30 = load i32, i32* %4, align 4, !dbg !50
  %31 = load i32, i32* %5, align 4, !dbg !51
  %int_cast_to_i64 = zext i32 %31 to i64, !dbg !52
  call void @klee_div_zero_check(i64 %int_cast_to_i64), !dbg !52
  %32 = sdiv i32 %30, %31, !dbg !52, !klee.check.div !53
  %33 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 noundef %28, i32 noundef %29, i32 noundef %32), !dbg !54
  br label %36, !dbg !55

34:                                               ; preds = %3
  %35 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0)), !dbg !56
  br label %36

36:                                               ; preds = %34, %27
  call void @llvm.dbg.declare(metadata float* %9, metadata !58, metadata !DIExpression()), !dbg !60
  %37 = load double, double* %6, align 8, !dbg !61
  %38 = load double, double* %6, align 8, !dbg !62
  %39 = fadd double %37, %38, !dbg !63
  %40 = fptrunc double %39 to float, !dbg !61
  store float %40, float* %9, align 4, !dbg !60
  call void @llvm.dbg.declare(metadata float* %10, metadata !64, metadata !DIExpression()), !dbg !65
  %41 = load double, double* %6, align 8, !dbg !66
  %42 = load double, double* %6, align 8, !dbg !67
  %43 = fmul double %41, %42, !dbg !68
  %44 = fptrunc double %43 to float, !dbg !66
  store float %44, float* %10, align 4, !dbg !65
  %45 = load double, double* %6, align 8, !dbg !69
  %46 = load double, double* %6, align 8, !dbg !70
  %47 = load float, float* %9, align 4, !dbg !71
  %48 = fpext float %47 to double, !dbg !71
  %49 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), double noundef %45, double noundef %46, double noundef %48), !dbg !72
  %50 = load double, double* %6, align 8, !dbg !73
  %51 = load double, double* %6, align 8, !dbg !74
  %52 = load float, float* %10, align 4, !dbg !75
  %53 = fpext float %52 to double, !dbg !75
  %54 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), double noundef %50, double noundef %51, double noundef %53), !dbg !76
  %55 = load double, double* %6, align 8, !dbg !77
  %56 = load double, double* %6, align 8, !dbg !78
  %57 = call double @sin(double noundef %56) #5, !dbg !79
  %58 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), double noundef %55, double noundef %57), !dbg !80
  ret void, !dbg !81
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @printf(i8* noundef, ...) #2

; Function Attrs: nounwind
declare double @sin(double noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #0 !dbg !82 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !88, metadata !DIExpression()), !dbg !89
  store i8** %1, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !90, metadata !DIExpression()), !dbg !91
  call void @llvm.dbg.declare(metadata i32* %6, metadata !92, metadata !DIExpression()), !dbg !93
  call void @llvm.dbg.declare(metadata i32* %7, metadata !94, metadata !DIExpression()), !dbg !95
  call void @llvm.dbg.declare(metadata double* %8, metadata !96, metadata !DIExpression()), !dbg !97
  %9 = bitcast i32* %6 to i8*, !dbg !98
  call void @klee_make_symbolic(i8* noundef %9, i64 noundef 4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)), !dbg !99
  %10 = bitcast i32* %7 to i8*, !dbg !100
  call void @klee_make_symbolic(i8* noundef %10, i64 noundef 4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0)), !dbg !101
  %11 = bitcast double* %8 to i8*, !dbg !102
  call void @klee_make_symbolic(i8* noundef %11, i64 noundef 8, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0)), !dbg !103
  %12 = load i32, i32* %6, align 4, !dbg !104
  %13 = load i32, i32* %7, align 4, !dbg !105
  %14 = load double, double* %8, align 8, !dbg !106
  call void @math_test(i32 noundef %12, i32 noundef %13, double noundef %14), !dbg !107
  ret i32 0, !dbg !108
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @klee_div_zero_check(i64 noundef %0) #0 !dbg !109 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !114, metadata !DIExpression()), !dbg !115
  %3 = load i64, i64* %2, align 8, !dbg !116
  %4 = icmp eq i64 %3, 0, !dbg !118
  br i1 %4, label %5, label %6, !dbg !119

5:                                                ; preds = %1
  call void @klee_report_error(i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @.str.10, i64 0, i64 0), i32 noundef 14, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1.11, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.12, i64 0, i64 0)) #6, !dbg !120
  unreachable, !dbg !120

6:                                                ; preds = %1
  ret void, !dbg !121
}

; Function Attrs: noreturn
declare void @klee_report_error(i8* noundef, i32 noundef, i8* noundef, i8* noundef) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { noreturn }

!llvm.dbg.cu = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11, !11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/brooke/Code-Coverage-Tools-Benchmark/klee_tests/math_ops.c", directory: "/home/brooke/Code-Coverage-Tools-Benchmark", checksumkind: CSK_MD5, checksum: "aa969465391a9b0b777e5ff0e28112ca")
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/brooke/klee/runtime/Intrinsic/klee_div_zero_check.c", directory: "/home/brooke/klee/build/runtime/Intrinsic", checksumkind: CSK_MD5, checksum: "ac97458b4bebcea5cefe50ebb216db13")
!4 = !{i32 7, !"Dwarf Version", i32 5}
!5 = !{i32 2, !"Debug Info Version", i32 3}
!6 = !{i32 1, !"wchar_size", i32 4}
!7 = !{i32 7, !"PIC Level", i32 2}
!8 = !{i32 7, !"PIE Level", i32 2}
!9 = !{i32 7, !"uwtable", i32 1}
!10 = !{i32 7, !"frame-pointer", i32 2}
!11 = !{!"Ubuntu clang version 14.0.6"}
!12 = distinct !DISubprogram(name: "math_test", scope: !13, file: !13, line: 8, type: !14, scopeLine: 8, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !18)
!13 = !DIFile(filename: "klee_tests/math_ops.c", directory: "/home/brooke/Code-Coverage-Tools-Benchmark", checksumkind: CSK_MD5, checksum: "aa969465391a9b0b777e5ff0e28112ca")
!14 = !DISubroutineType(types: !15)
!15 = !{null, !16, !16, !17}
!16 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!17 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!18 = !{}
!19 = !DILocalVariable(name: "a", arg: 1, scope: !12, file: !13, line: 8, type: !16)
!20 = !DILocation(line: 8, column: 20, scope: !12)
!21 = !DILocalVariable(name: "b", arg: 2, scope: !12, file: !13, line: 8, type: !16)
!22 = !DILocation(line: 8, column: 27, scope: !12)
!23 = !DILocalVariable(name: "x", arg: 3, scope: !12, file: !13, line: 8, type: !17)
!24 = !DILocation(line: 8, column: 37, scope: !12)
!25 = !DILocalVariable(name: "add", scope: !12, file: !13, line: 10, type: !16)
!26 = !DILocation(line: 10, column: 9, scope: !12)
!27 = !DILocation(line: 10, column: 15, scope: !12)
!28 = !DILocation(line: 10, column: 19, scope: !12)
!29 = !DILocation(line: 10, column: 17, scope: !12)
!30 = !DILocalVariable(name: "mult", scope: !12, file: !13, line: 11, type: !16)
!31 = !DILocation(line: 11, column: 9, scope: !12)
!32 = !DILocation(line: 11, column: 16, scope: !12)
!33 = !DILocation(line: 11, column: 20, scope: !12)
!34 = !DILocation(line: 11, column: 18, scope: !12)
!35 = !DILocation(line: 12, column: 48, scope: !12)
!36 = !DILocation(line: 12, column: 51, scope: !12)
!37 = !DILocation(line: 12, column: 54, scope: !12)
!38 = !DILocation(line: 12, column: 5, scope: !12)
!39 = !DILocation(line: 13, column: 54, scope: !12)
!40 = !DILocation(line: 13, column: 57, scope: !12)
!41 = !DILocation(line: 13, column: 60, scope: !12)
!42 = !DILocation(line: 13, column: 5, scope: !12)
!43 = !DILocation(line: 15, column: 9, scope: !44)
!44 = distinct !DILexicalBlock(scope: !12, file: !13, line: 15, column: 9)
!45 = !DILocation(line: 15, column: 11, scope: !44)
!46 = !DILocation(line: 15, column: 9, scope: !12)
!47 = !DILocation(line: 16, column: 52, scope: !48)
!48 = distinct !DILexicalBlock(scope: !44, file: !13, line: 15, column: 17)
!49 = !DILocation(line: 16, column: 55, scope: !48)
!50 = !DILocation(line: 16, column: 58, scope: !48)
!51 = !DILocation(line: 16, column: 62, scope: !48)
!52 = !DILocation(line: 16, column: 60, scope: !48)
!53 = !{!"True"}
!54 = !DILocation(line: 16, column: 9, scope: !48)
!55 = !DILocation(line: 17, column: 5, scope: !48)
!56 = !DILocation(line: 18, column: 9, scope: !57)
!57 = distinct !DILexicalBlock(scope: !44, file: !13, line: 17, column: 12)
!58 = !DILocalVariable(name: "add1", scope: !12, file: !13, line: 22, type: !59)
!59 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!60 = !DILocation(line: 22, column: 11, scope: !12)
!61 = !DILocation(line: 22, column: 18, scope: !12)
!62 = !DILocation(line: 22, column: 22, scope: !12)
!63 = !DILocation(line: 22, column: 20, scope: !12)
!64 = !DILocalVariable(name: "mult1", scope: !12, file: !13, line: 23, type: !59)
!65 = !DILocation(line: 23, column: 11, scope: !12)
!66 = !DILocation(line: 23, column: 19, scope: !12)
!67 = !DILocation(line: 23, column: 23, scope: !12)
!68 = !DILocation(line: 23, column: 21, scope: !12)
!69 = !DILocation(line: 24, column: 55, scope: !12)
!70 = !DILocation(line: 24, column: 58, scope: !12)
!71 = !DILocation(line: 24, column: 61, scope: !12)
!72 = !DILocation(line: 24, column: 5, scope: !12)
!73 = !DILocation(line: 25, column: 61, scope: !12)
!74 = !DILocation(line: 25, column: 64, scope: !12)
!75 = !DILocation(line: 25, column: 67, scope: !12)
!76 = !DILocation(line: 25, column: 5, scope: !12)
!77 = !DILocation(line: 26, column: 31, scope: !12)
!78 = !DILocation(line: 26, column: 38, scope: !12)
!79 = !DILocation(line: 26, column: 34, scope: !12)
!80 = !DILocation(line: 26, column: 5, scope: !12)
!81 = !DILocation(line: 27, column: 1, scope: !12)
!82 = distinct !DISubprogram(name: "main", scope: !13, file: !13, line: 29, type: !83, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !18)
!83 = !DISubroutineType(types: !84)
!84 = !{!16, !16, !85}
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!87 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!88 = !DILocalVariable(name: "argc", arg: 1, scope: !82, file: !13, line: 29, type: !16)
!89 = !DILocation(line: 29, column: 14, scope: !82)
!90 = !DILocalVariable(name: "argv", arg: 2, scope: !82, file: !13, line: 29, type: !85)
!91 = !DILocation(line: 29, column: 27, scope: !82)
!92 = !DILocalVariable(name: "a", scope: !82, file: !13, line: 30, type: !16)
!93 = !DILocation(line: 30, column: 9, scope: !82)
!94 = !DILocalVariable(name: "b", scope: !82, file: !13, line: 30, type: !16)
!95 = !DILocation(line: 30, column: 12, scope: !82)
!96 = !DILocalVariable(name: "x", scope: !82, file: !13, line: 31, type: !17)
!97 = !DILocation(line: 31, column: 12, scope: !82)
!98 = !DILocation(line: 34, column: 24, scope: !82)
!99 = !DILocation(line: 34, column: 5, scope: !82)
!100 = !DILocation(line: 35, column: 24, scope: !82)
!101 = !DILocation(line: 35, column: 5, scope: !82)
!102 = !DILocation(line: 36, column: 24, scope: !82)
!103 = !DILocation(line: 36, column: 5, scope: !82)
!104 = !DILocation(line: 38, column: 15, scope: !82)
!105 = !DILocation(line: 38, column: 18, scope: !82)
!106 = !DILocation(line: 38, column: 21, scope: !82)
!107 = !DILocation(line: 38, column: 5, scope: !82)
!108 = !DILocation(line: 39, column: 5, scope: !82)
!109 = distinct !DISubprogram(name: "klee_div_zero_check", scope: !110, file: !110, line: 12, type: !111, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !18)
!110 = !DIFile(filename: "runtime/Intrinsic/klee_div_zero_check.c", directory: "/home/brooke/klee", checksumkind: CSK_MD5, checksum: "ac97458b4bebcea5cefe50ebb216db13")
!111 = !DISubroutineType(types: !112)
!112 = !{null, !113}
!113 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!114 = !DILocalVariable(name: "z", arg: 1, scope: !109, file: !110, line: 12, type: !113)
!115 = !DILocation(line: 12, column: 36, scope: !109)
!116 = !DILocation(line: 13, column: 7, scope: !117)
!117 = distinct !DILexicalBlock(scope: !109, file: !110, line: 13, column: 7)
!118 = !DILocation(line: 13, column: 9, scope: !117)
!119 = !DILocation(line: 13, column: 7, scope: !109)
!120 = !DILocation(line: 14, column: 5, scope: !117)
!121 = !DILocation(line: 15, column: 1, scope: !109)
