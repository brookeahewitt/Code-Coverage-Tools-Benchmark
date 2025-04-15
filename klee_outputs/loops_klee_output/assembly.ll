; ModuleID = '/home/brooke/Code-Coverage-Tools-Benchmark/klee_build/loops_klee.bc'
source_filename = "/home/brooke/Code-Coverage-Tools-Benchmark/klee_tests/loops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Sum of Squares from 0 to %d: %d\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @loops(i32 noundef %0) #0 !dbg !10 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !16, metadata !DIExpression()), !dbg !17
  call void @llvm.dbg.declare(metadata i32** %3, metadata !18, metadata !DIExpression()), !dbg !20
  %7 = load i32, i32* %2, align 4, !dbg !21
  %8 = add nsw i32 %7, 1, !dbg !22
  %9 = sext i32 %8 to i64, !dbg !23
  %10 = mul i64 4, %9, !dbg !24
  %11 = call noalias i8* @malloc(i64 noundef %10) #4, !dbg !25
  %12 = bitcast i8* %11 to i32*, !dbg !25
  store i32* %12, i32** %3, align 8, !dbg !20
  call void @llvm.dbg.declare(metadata i32* %4, metadata !26, metadata !DIExpression()), !dbg !28
  store i32 0, i32* %4, align 4, !dbg !28
  br label %13, !dbg !29

13:                                               ; preds = %17, %1
  %14 = load i32, i32* %4, align 4, !dbg !30
  %15 = load i32, i32* %2, align 4, !dbg !32
  %16 = icmp sle i32 %14, %15, !dbg !33
  br i1 %16, label %17, label %27, !dbg !34

17:                                               ; preds = %13
  %18 = load i32, i32* %4, align 4, !dbg !35
  %19 = load i32, i32* %4, align 4, !dbg !37
  %20 = mul nsw i32 %18, %19, !dbg !38
  %21 = load i32*, i32** %3, align 8, !dbg !39
  %22 = load i32, i32* %4, align 4, !dbg !40
  %23 = sext i32 %22 to i64, !dbg !39
  %24 = getelementptr inbounds i32, i32* %21, i64 %23, !dbg !39
  store i32 %20, i32* %24, align 4, !dbg !41
  %25 = load i32, i32* %4, align 4, !dbg !42
  %26 = add nsw i32 %25, 1, !dbg !42
  store i32 %26, i32* %4, align 4, !dbg !42
  br label %13, !dbg !43, !llvm.loop !44

27:                                               ; preds = %13
  call void @llvm.dbg.declare(metadata i32* %5, metadata !47, metadata !DIExpression()), !dbg !48
  store i32 0, i32* %5, align 4, !dbg !48
  call void @llvm.dbg.declare(metadata i32* %6, metadata !49, metadata !DIExpression()), !dbg !50
  store i32 0, i32* %6, align 4, !dbg !50
  br label %28, !dbg !51

28:                                               ; preds = %32, %27
  %29 = load i32, i32* %6, align 4, !dbg !52
  %30 = load i32, i32* %2, align 4, !dbg !53
  %31 = icmp sle i32 %29, %30, !dbg !54
  br i1 %31, label %32, label %42, !dbg !51

32:                                               ; preds = %28
  %33 = load i32*, i32** %3, align 8, !dbg !55
  %34 = load i32, i32* %6, align 4, !dbg !57
  %35 = sext i32 %34 to i64, !dbg !55
  %36 = getelementptr inbounds i32, i32* %33, i64 %35, !dbg !55
  %37 = load i32, i32* %36, align 4, !dbg !55
  %38 = load i32, i32* %5, align 4, !dbg !58
  %39 = add nsw i32 %38, %37, !dbg !58
  store i32 %39, i32* %5, align 4, !dbg !58
  %40 = load i32, i32* %6, align 4, !dbg !59
  %41 = add nsw i32 %40, 1, !dbg !59
  store i32 %41, i32* %6, align 4, !dbg !59
  br label %28, !dbg !51, !llvm.loop !60

42:                                               ; preds = %28
  %43 = load i32, i32* %5, align 4, !dbg !62
  ret i32 %43, !dbg !63
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #0 !dbg !64 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !70, metadata !DIExpression()), !dbg !71
  store i8** %1, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !72, metadata !DIExpression()), !dbg !73
  call void @llvm.dbg.declare(metadata i32* %6, metadata !74, metadata !DIExpression()), !dbg !75
  %7 = bitcast i32* %6 to i8*, !dbg !76
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)), !dbg !77
  %8 = load i32, i32* %6, align 4, !dbg !78
  %9 = icmp sge i32 %8, 0, !dbg !79
  %10 = zext i1 %9 to i32, !dbg !79
  %11 = sext i32 %10 to i64, !dbg !78
  call void @klee_assume(i64 noundef %11), !dbg !80
  %12 = load i32, i32* %6, align 4, !dbg !81
  %13 = load i32, i32* %6, align 4, !dbg !82
  %14 = call i32 @loops(i32 noundef %13), !dbg !83
  %15 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 noundef %12, i32 noundef %14), !dbg !84
  ret i32 0, !dbg !85
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #3

declare void @klee_assume(i64 noundef) #3

declare i32 @printf(i8* noundef, ...) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/brooke/Code-Coverage-Tools-Benchmark/klee_tests/loops.c", directory: "/home/brooke/Code-Coverage-Tools-Benchmark", checksumkind: CSK_MD5, checksum: "046d79082a87534f560111369aad4673")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{i32 7, !"frame-pointer", i32 2}
!9 = !{!"Ubuntu clang version 14.0.6"}
!10 = distinct !DISubprogram(name: "loops", scope: !11, file: !11, line: 8, type: !12, scopeLine: 8, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!11 = !DIFile(filename: "klee_tests/loops.c", directory: "/home/brooke/Code-Coverage-Tools-Benchmark", checksumkind: CSK_MD5, checksum: "046d79082a87534f560111369aad4673")
!12 = !DISubroutineType(types: !13)
!13 = !{!14, !14}
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!15 = !{}
!16 = !DILocalVariable(name: "x", arg: 1, scope: !10, file: !11, line: 8, type: !14)
!17 = !DILocation(line: 8, column: 15, scope: !10)
!18 = !DILocalVariable(name: "squares", scope: !10, file: !11, line: 9, type: !19)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!20 = !DILocation(line: 9, column: 10, scope: !10)
!21 = !DILocation(line: 9, column: 42, scope: !10)
!22 = !DILocation(line: 9, column: 44, scope: !10)
!23 = !DILocation(line: 9, column: 41, scope: !10)
!24 = !DILocation(line: 9, column: 39, scope: !10)
!25 = !DILocation(line: 9, column: 20, scope: !10)
!26 = !DILocalVariable(name: "i", scope: !27, file: !11, line: 11, type: !14)
!27 = distinct !DILexicalBlock(scope: !10, file: !11, line: 11, column: 5)
!28 = !DILocation(line: 11, column: 14, scope: !27)
!29 = !DILocation(line: 11, column: 10, scope: !27)
!30 = !DILocation(line: 11, column: 21, scope: !31)
!31 = distinct !DILexicalBlock(scope: !27, file: !11, line: 11, column: 5)
!32 = !DILocation(line: 11, column: 26, scope: !31)
!33 = !DILocation(line: 11, column: 23, scope: !31)
!34 = !DILocation(line: 11, column: 5, scope: !27)
!35 = !DILocation(line: 12, column: 22, scope: !36)
!36 = distinct !DILexicalBlock(scope: !31, file: !11, line: 11, column: 34)
!37 = !DILocation(line: 12, column: 24, scope: !36)
!38 = !DILocation(line: 12, column: 23, scope: !36)
!39 = !DILocation(line: 12, column: 9, scope: !36)
!40 = !DILocation(line: 12, column: 17, scope: !36)
!41 = !DILocation(line: 12, column: 20, scope: !36)
!42 = !DILocation(line: 11, column: 30, scope: !31)
!43 = !DILocation(line: 11, column: 5, scope: !31)
!44 = distinct !{!44, !34, !45, !46}
!45 = !DILocation(line: 13, column: 5, scope: !27)
!46 = !{!"llvm.loop.mustprogress"}
!47 = !DILocalVariable(name: "sum", scope: !10, file: !11, line: 15, type: !14)
!48 = !DILocation(line: 15, column: 9, scope: !10)
!49 = !DILocalVariable(name: "i", scope: !10, file: !11, line: 16, type: !14)
!50 = !DILocation(line: 16, column: 9, scope: !10)
!51 = !DILocation(line: 17, column: 5, scope: !10)
!52 = !DILocation(line: 17, column: 12, scope: !10)
!53 = !DILocation(line: 17, column: 17, scope: !10)
!54 = !DILocation(line: 17, column: 14, scope: !10)
!55 = !DILocation(line: 18, column: 16, scope: !56)
!56 = distinct !DILexicalBlock(scope: !10, file: !11, line: 17, column: 20)
!57 = !DILocation(line: 18, column: 24, scope: !56)
!58 = !DILocation(line: 18, column: 13, scope: !56)
!59 = !DILocation(line: 19, column: 10, scope: !56)
!60 = distinct !{!60, !51, !61, !46}
!61 = !DILocation(line: 20, column: 5, scope: !10)
!62 = !DILocation(line: 22, column: 12, scope: !10)
!63 = !DILocation(line: 22, column: 5, scope: !10)
!64 = distinct !DISubprogram(name: "main", scope: !11, file: !11, line: 25, type: !65, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!65 = !DISubroutineType(types: !66)
!66 = !{!14, !14, !67}
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!70 = !DILocalVariable(name: "argc", arg: 1, scope: !64, file: !11, line: 25, type: !14)
!71 = !DILocation(line: 25, column: 14, scope: !64)
!72 = !DILocalVariable(name: "argv", arg: 2, scope: !64, file: !11, line: 25, type: !67)
!73 = !DILocation(line: 25, column: 27, scope: !64)
!74 = !DILocalVariable(name: "x", scope: !64, file: !11, line: 26, type: !14)
!75 = !DILocation(line: 26, column: 9, scope: !64)
!76 = !DILocation(line: 29, column: 24, scope: !64)
!77 = !DILocation(line: 29, column: 5, scope: !64)
!78 = !DILocation(line: 30, column: 17, scope: !64)
!79 = !DILocation(line: 30, column: 19, scope: !64)
!80 = !DILocation(line: 30, column: 5, scope: !64)
!81 = !DILocation(line: 32, column: 47, scope: !64)
!82 = !DILocation(line: 32, column: 56, scope: !64)
!83 = !DILocation(line: 32, column: 50, scope: !64)
!84 = !DILocation(line: 32, column: 5, scope: !64)
!85 = !DILocation(line: 33, column: 5, scope: !64)
