; ModuleID = '/home/brooke/Code-Coverage-Tools-Benchmark/klee_build/loops_klee.bc'
source_filename = "/home/brooke/Code-Coverage-Tools-Benchmark/klee_tests/loops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Sum of Squares from 0 to %d: %d\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @loops(i32 noundef %0) #0 !dbg !12 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !18, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.declare(metadata i32** %4, metadata !20, metadata !DIExpression()), !dbg !22
  %8 = load i32, i32* %3, align 4, !dbg !23
  %9 = add nsw i32 %8, 1, !dbg !24
  %10 = sext i32 %9 to i64, !dbg !25
  %11 = mul i64 4, %10, !dbg !26
  %12 = call noalias i8* @malloc(i64 noundef %11) #4, !dbg !27
  %13 = bitcast i8* %12 to i32*, !dbg !27
  store i32* %13, i32** %4, align 8, !dbg !22
  %14 = load i32*, i32** %4, align 8, !dbg !28
  %15 = icmp eq i32* %14, null, !dbg !30
  br i1 %15, label %16, label %17, !dbg !31

16:                                               ; preds = %1
  store i32 -1, i32* %2, align 4, !dbg !32
  br label %49, !dbg !32

17:                                               ; preds = %1
  call void @llvm.dbg.declare(metadata i32* %5, metadata !34, metadata !DIExpression()), !dbg !36
  store i32 0, i32* %5, align 4, !dbg !36
  br label %18, !dbg !37

18:                                               ; preds = %22, %17
  %19 = load i32, i32* %5, align 4, !dbg !38
  %20 = load i32, i32* %3, align 4, !dbg !40
  %21 = icmp sle i32 %19, %20, !dbg !41
  br i1 %21, label %22, label %32, !dbg !42

22:                                               ; preds = %18
  %23 = load i32, i32* %5, align 4, !dbg !43
  %24 = load i32, i32* %5, align 4, !dbg !45
  %25 = mul nsw i32 %23, %24, !dbg !46
  %26 = load i32*, i32** %4, align 8, !dbg !47
  %27 = load i32, i32* %5, align 4, !dbg !48
  %28 = sext i32 %27 to i64, !dbg !47
  %29 = getelementptr inbounds i32, i32* %26, i64 %28, !dbg !47
  store i32 %25, i32* %29, align 4, !dbg !49
  %30 = load i32, i32* %5, align 4, !dbg !50
  %31 = add nsw i32 %30, 1, !dbg !50
  store i32 %31, i32* %5, align 4, !dbg !50
  br label %18, !dbg !51, !llvm.loop !52

32:                                               ; preds = %18
  call void @llvm.dbg.declare(metadata i32* %6, metadata !55, metadata !DIExpression()), !dbg !56
  store i32 0, i32* %6, align 4, !dbg !56
  call void @llvm.dbg.declare(metadata i32* %7, metadata !57, metadata !DIExpression()), !dbg !58
  store i32 0, i32* %7, align 4, !dbg !58
  br label %33, !dbg !59

33:                                               ; preds = %37, %32
  %34 = load i32, i32* %7, align 4, !dbg !60
  %35 = load i32, i32* %3, align 4, !dbg !61
  %36 = icmp sle i32 %34, %35, !dbg !62
  br i1 %36, label %37, label %47, !dbg !59

37:                                               ; preds = %33
  %38 = load i32*, i32** %4, align 8, !dbg !63
  %39 = load i32, i32* %7, align 4, !dbg !65
  %40 = sext i32 %39 to i64, !dbg !63
  %41 = getelementptr inbounds i32, i32* %38, i64 %40, !dbg !63
  %42 = load i32, i32* %41, align 4, !dbg !63
  %43 = load i32, i32* %6, align 4, !dbg !66
  %44 = add nsw i32 %43, %42, !dbg !66
  store i32 %44, i32* %6, align 4, !dbg !66
  %45 = load i32, i32* %7, align 4, !dbg !67
  %46 = add nsw i32 %45, 1, !dbg !67
  store i32 %46, i32* %7, align 4, !dbg !67
  br label %33, !dbg !59, !llvm.loop !68

47:                                               ; preds = %33
  %48 = load i32, i32* %6, align 4, !dbg !70
  store i32 %48, i32* %2, align 4, !dbg !71
  br label %49, !dbg !71

49:                                               ; preds = %47, %16
  %50 = load i32, i32* %2, align 4, !dbg !72
  ret i32 %50, !dbg !72
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #0 !dbg !73 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !79, metadata !DIExpression()), !dbg !80
  store i8** %1, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !81, metadata !DIExpression()), !dbg !82
  call void @llvm.dbg.declare(metadata i32* %6, metadata !83, metadata !DIExpression()), !dbg !84
  %7 = bitcast i32* %6 to i8*, !dbg !85
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)), !dbg !86
  %8 = load i32, i32* %6, align 4, !dbg !87
  %9 = icmp sge i32 %8, 0, !dbg !88
  %10 = zext i1 %9 to i32, !dbg !88
  %11 = sext i32 %10 to i64, !dbg !87
  call void @klee_assume(i64 noundef %11), !dbg !89
  %12 = load i32, i32* %6, align 4, !dbg !90
  %13 = load i32, i32* %6, align 4, !dbg !91
  %14 = call i32 @loops(i32 noundef %13), !dbg !92
  %15 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 noundef %12, i32 noundef %14), !dbg !93
  ret i32 0, !dbg !94
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
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/brooke/Code-Coverage-Tools-Benchmark/klee_tests/loops.c", directory: "/home/brooke/Code-Coverage-Tools-Benchmark", checksumkind: CSK_MD5, checksum: "15ca4f530a957cc12806b85766c2f75c")
!2 = !{!3}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !{i32 7, !"Dwarf Version", i32 5}
!5 = !{i32 2, !"Debug Info Version", i32 3}
!6 = !{i32 1, !"wchar_size", i32 4}
!7 = !{i32 7, !"PIC Level", i32 2}
!8 = !{i32 7, !"PIE Level", i32 2}
!9 = !{i32 7, !"uwtable", i32 1}
!10 = !{i32 7, !"frame-pointer", i32 2}
!11 = !{!"Ubuntu clang version 14.0.6"}
!12 = distinct !DISubprogram(name: "loops", scope: !13, file: !13, line: 8, type: !14, scopeLine: 8, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !17)
!13 = !DIFile(filename: "klee_tests/loops.c", directory: "/home/brooke/Code-Coverage-Tools-Benchmark", checksumkind: CSK_MD5, checksum: "15ca4f530a957cc12806b85766c2f75c")
!14 = !DISubroutineType(types: !15)
!15 = !{!16, !16}
!16 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!17 = !{}
!18 = !DILocalVariable(name: "x", arg: 1, scope: !12, file: !13, line: 8, type: !16)
!19 = !DILocation(line: 8, column: 15, scope: !12)
!20 = !DILocalVariable(name: "squares", scope: !12, file: !13, line: 9, type: !21)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!22 = !DILocation(line: 9, column: 10, scope: !12)
!23 = !DILocation(line: 9, column: 42, scope: !12)
!24 = !DILocation(line: 9, column: 44, scope: !12)
!25 = !DILocation(line: 9, column: 41, scope: !12)
!26 = !DILocation(line: 9, column: 39, scope: !12)
!27 = !DILocation(line: 9, column: 20, scope: !12)
!28 = !DILocation(line: 11, column: 9, scope: !29)
!29 = distinct !DILexicalBlock(scope: !12, file: !13, line: 11, column: 9)
!30 = !DILocation(line: 11, column: 17, scope: !29)
!31 = !DILocation(line: 11, column: 9, scope: !12)
!32 = !DILocation(line: 12, column: 9, scope: !33)
!33 = distinct !DILexicalBlock(scope: !29, file: !13, line: 11, column: 26)
!34 = !DILocalVariable(name: "i", scope: !35, file: !13, line: 15, type: !16)
!35 = distinct !DILexicalBlock(scope: !12, file: !13, line: 15, column: 5)
!36 = !DILocation(line: 15, column: 14, scope: !35)
!37 = !DILocation(line: 15, column: 10, scope: !35)
!38 = !DILocation(line: 15, column: 21, scope: !39)
!39 = distinct !DILexicalBlock(scope: !35, file: !13, line: 15, column: 5)
!40 = !DILocation(line: 15, column: 26, scope: !39)
!41 = !DILocation(line: 15, column: 23, scope: !39)
!42 = !DILocation(line: 15, column: 5, scope: !35)
!43 = !DILocation(line: 16, column: 22, scope: !44)
!44 = distinct !DILexicalBlock(scope: !39, file: !13, line: 15, column: 34)
!45 = !DILocation(line: 16, column: 24, scope: !44)
!46 = !DILocation(line: 16, column: 23, scope: !44)
!47 = !DILocation(line: 16, column: 9, scope: !44)
!48 = !DILocation(line: 16, column: 17, scope: !44)
!49 = !DILocation(line: 16, column: 20, scope: !44)
!50 = !DILocation(line: 15, column: 30, scope: !39)
!51 = !DILocation(line: 15, column: 5, scope: !39)
!52 = distinct !{!52, !42, !53, !54}
!53 = !DILocation(line: 17, column: 5, scope: !35)
!54 = !{!"llvm.loop.mustprogress"}
!55 = !DILocalVariable(name: "sum", scope: !12, file: !13, line: 19, type: !16)
!56 = !DILocation(line: 19, column: 9, scope: !12)
!57 = !DILocalVariable(name: "i", scope: !12, file: !13, line: 20, type: !16)
!58 = !DILocation(line: 20, column: 9, scope: !12)
!59 = !DILocation(line: 21, column: 5, scope: !12)
!60 = !DILocation(line: 21, column: 12, scope: !12)
!61 = !DILocation(line: 21, column: 17, scope: !12)
!62 = !DILocation(line: 21, column: 14, scope: !12)
!63 = !DILocation(line: 22, column: 16, scope: !64)
!64 = distinct !DILexicalBlock(scope: !12, file: !13, line: 21, column: 20)
!65 = !DILocation(line: 22, column: 24, scope: !64)
!66 = !DILocation(line: 22, column: 13, scope: !64)
!67 = !DILocation(line: 23, column: 10, scope: !64)
!68 = distinct !{!68, !59, !69, !54}
!69 = !DILocation(line: 24, column: 5, scope: !12)
!70 = !DILocation(line: 26, column: 12, scope: !12)
!71 = !DILocation(line: 26, column: 5, scope: !12)
!72 = !DILocation(line: 27, column: 1, scope: !12)
!73 = distinct !DISubprogram(name: "main", scope: !13, file: !13, line: 29, type: !74, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !17)
!74 = !DISubroutineType(types: !75)
!75 = !{!16, !16, !76}
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!78 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!79 = !DILocalVariable(name: "argc", arg: 1, scope: !73, file: !13, line: 29, type: !16)
!80 = !DILocation(line: 29, column: 14, scope: !73)
!81 = !DILocalVariable(name: "argv", arg: 2, scope: !73, file: !13, line: 29, type: !76)
!82 = !DILocation(line: 29, column: 27, scope: !73)
!83 = !DILocalVariable(name: "x", scope: !73, file: !13, line: 30, type: !16)
!84 = !DILocation(line: 30, column: 9, scope: !73)
!85 = !DILocation(line: 33, column: 24, scope: !73)
!86 = !DILocation(line: 33, column: 5, scope: !73)
!87 = !DILocation(line: 34, column: 17, scope: !73)
!88 = !DILocation(line: 34, column: 19, scope: !73)
!89 = !DILocation(line: 34, column: 5, scope: !73)
!90 = !DILocation(line: 36, column: 47, scope: !73)
!91 = !DILocation(line: 36, column: 56, scope: !73)
!92 = !DILocation(line: 36, column: 50, scope: !73)
!93 = !DILocation(line: 36, column: 5, scope: !73)
!94 = !DILocation(line: 37, column: 5, scope: !73)
