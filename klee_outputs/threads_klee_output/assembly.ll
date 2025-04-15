; ModuleID = '/home/brooke/Code-Coverage-Tools-Benchmark/klee_build/threads_klee.bc'
source_filename = "/home/brooke/Code-Coverage-Tools-Benchmark/klee_tests/threads.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.pthread_attr_t = type { i64, [48 x i8] }

@.str = private unnamed_addr constant [21 x i8] c"Value is equal to 0\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Value is negative\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Value is positive\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"Both threads have finished.\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @printNum(i8* noundef %0) #0 !dbg !14 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !19, metadata !DIExpression()), !dbg !20
  call void @llvm.dbg.declare(metadata i32* %3, metadata !21, metadata !DIExpression()), !dbg !22
  %4 = load i8*, i8** %2, align 8, !dbg !23
  %5 = bitcast i8* %4 to i32*, !dbg !24
  %6 = load i32, i32* %5, align 4, !dbg !25
  store i32 %6, i32* %3, align 4, !dbg !22
  %7 = load i32, i32* %3, align 4, !dbg !26
  %8 = icmp eq i32 %7, 0, !dbg !28
  br i1 %8, label %9, label %11, !dbg !29

9:                                                ; preds = %1
  %10 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0)), !dbg !30
  br label %18, !dbg !32

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4, !dbg !33
  %13 = icmp slt i32 %12, 0, !dbg !35
  br i1 %13, label %14, label %16, !dbg !36

14:                                               ; preds = %11
  %15 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0)), !dbg !37
  br label %18, !dbg !39

16:                                               ; preds = %11
  %17 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0)), !dbg !40
  br label %18

18:                                               ; preds = %14, %16, %9
  ret i8* null, !dbg !42
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @printf(i8* noundef, ...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #0 !dbg !43 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !49, metadata !DIExpression()), !dbg !50
  store i8** %1, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !51, metadata !DIExpression()), !dbg !52
  call void @llvm.dbg.declare(metadata i32* %6, metadata !53, metadata !DIExpression()), !dbg !54
  call void @llvm.dbg.declare(metadata i32* %7, metadata !55, metadata !DIExpression()), !dbg !56
  %10 = bitcast i32* %6 to i8*, !dbg !57
  call void @klee_make_symbolic(i8* noundef %10, i64 noundef 4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)), !dbg !58
  %11 = bitcast i32* %7 to i8*, !dbg !59
  call void @klee_make_symbolic(i8* noundef %11, i64 noundef 4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)), !dbg !60
  call void @llvm.dbg.declare(metadata i64* %8, metadata !61, metadata !DIExpression()), !dbg !65
  call void @llvm.dbg.declare(metadata i64* %9, metadata !66, metadata !DIExpression()), !dbg !67
  %12 = bitcast i32* %6 to i8*, !dbg !68
  %13 = call i32 @pthread_create(i64* noundef %8, %union.pthread_attr_t* noundef null, i8* (i8*)* noundef @printNum, i8* noundef %12) #4, !dbg !69
  %14 = bitcast i32* %7 to i8*, !dbg !70
  %15 = call i32 @pthread_create(i64* noundef %9, %union.pthread_attr_t* noundef null, i8* (i8*)* noundef @printNum, i8* noundef %14) #4, !dbg !71
  %16 = load i64, i64* %8, align 8, !dbg !72
  %17 = call i32 @pthread_join(i64 noundef %16, i8** noundef null), !dbg !73
  %18 = load i64, i64* %9, align 8, !dbg !74
  %19 = call i32 @pthread_join(i64 noundef %18, i8** noundef null), !dbg !75
  %20 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0)), !dbg !76
  ret i32 0, !dbg !77
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

; Function Attrs: nounwind
declare i32 @pthread_create(i64* noundef, %union.pthread_attr_t* noundef, i8* (i8*)* noundef, i8* noundef) #3

declare i32 @pthread_join(i64 noundef, i8** noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12}
!llvm.ident = !{!13}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/brooke/Code-Coverage-Tools-Benchmark/klee_tests/threads.c", directory: "/home/brooke/Code-Coverage-Tools-Benchmark", checksumkind: CSK_MD5, checksum: "5142cad3046ee3b1728debf1550b2548")
!2 = !{!3, !5}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !{i32 7, !"Dwarf Version", i32 5}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{i32 7, !"PIC Level", i32 2}
!10 = !{i32 7, !"PIE Level", i32 2}
!11 = !{i32 7, !"uwtable", i32 1}
!12 = !{i32 7, !"frame-pointer", i32 2}
!13 = !{!"Ubuntu clang version 14.0.6"}
!14 = distinct !DISubprogram(name: "printNum", scope: !15, file: !15, line: 9, type: !16, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !18)
!15 = !DIFile(filename: "klee_tests/threads.c", directory: "/home/brooke/Code-Coverage-Tools-Benchmark", checksumkind: CSK_MD5, checksum: "5142cad3046ee3b1728debf1550b2548")
!16 = !DISubroutineType(types: !17)
!17 = !{!5, !5}
!18 = !{}
!19 = !DILocalVariable(name: "arg", arg: 1, scope: !14, file: !15, line: 9, type: !5)
!20 = !DILocation(line: 9, column: 22, scope: !14)
!21 = !DILocalVariable(name: "num", scope: !14, file: !15, line: 10, type: !4)
!22 = !DILocation(line: 10, column: 9, scope: !14)
!23 = !DILocation(line: 10, column: 23, scope: !14)
!24 = !DILocation(line: 10, column: 16, scope: !14)
!25 = !DILocation(line: 10, column: 15, scope: !14)
!26 = !DILocation(line: 11, column: 9, scope: !27)
!27 = distinct !DILexicalBlock(scope: !14, file: !15, line: 11, column: 9)
!28 = !DILocation(line: 11, column: 13, scope: !27)
!29 = !DILocation(line: 11, column: 9, scope: !14)
!30 = !DILocation(line: 12, column: 9, scope: !31)
!31 = distinct !DILexicalBlock(scope: !27, file: !15, line: 11, column: 19)
!32 = !DILocation(line: 13, column: 5, scope: !31)
!33 = !DILocation(line: 13, column: 16, scope: !34)
!34 = distinct !DILexicalBlock(scope: !27, file: !15, line: 13, column: 16)
!35 = !DILocation(line: 13, column: 20, scope: !34)
!36 = !DILocation(line: 13, column: 16, scope: !27)
!37 = !DILocation(line: 14, column: 9, scope: !38)
!38 = distinct !DILexicalBlock(scope: !34, file: !15, line: 13, column: 25)
!39 = !DILocation(line: 15, column: 5, scope: !38)
!40 = !DILocation(line: 16, column: 9, scope: !41)
!41 = distinct !DILexicalBlock(scope: !34, file: !15, line: 15, column: 12)
!42 = !DILocation(line: 18, column: 5, scope: !14)
!43 = distinct !DISubprogram(name: "main", scope: !15, file: !15, line: 21, type: !44, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !18)
!44 = !DISubroutineType(types: !45)
!45 = !{!4, !4, !46}
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!49 = !DILocalVariable(name: "argc", arg: 1, scope: !43, file: !15, line: 21, type: !4)
!50 = !DILocation(line: 21, column: 14, scope: !43)
!51 = !DILocalVariable(name: "argv", arg: 2, scope: !43, file: !15, line: 21, type: !46)
!52 = !DILocation(line: 21, column: 27, scope: !43)
!53 = !DILocalVariable(name: "x", scope: !43, file: !15, line: 22, type: !4)
!54 = !DILocation(line: 22, column: 9, scope: !43)
!55 = !DILocalVariable(name: "y", scope: !43, file: !15, line: 22, type: !4)
!56 = !DILocation(line: 22, column: 12, scope: !43)
!57 = !DILocation(line: 25, column: 24, scope: !43)
!58 = !DILocation(line: 25, column: 5, scope: !43)
!59 = !DILocation(line: 26, column: 24, scope: !43)
!60 = !DILocation(line: 26, column: 5, scope: !43)
!61 = !DILocalVariable(name: "threadID1", scope: !43, file: !15, line: 28, type: !62)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !63, line: 27, baseType: !64)
!63 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "8a5acdbeec491eca11cf81cb1ef77ea7")
!64 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!65 = !DILocation(line: 28, column: 15, scope: !43)
!66 = !DILocalVariable(name: "threadID2", scope: !43, file: !15, line: 29, type: !62)
!67 = !DILocation(line: 29, column: 15, scope: !43)
!68 = !DILocation(line: 31, column: 48, scope: !43)
!69 = !DILocation(line: 31, column: 5, scope: !43)
!70 = !DILocation(line: 32, column: 48, scope: !43)
!71 = !DILocation(line: 32, column: 5, scope: !43)
!72 = !DILocation(line: 34, column: 18, scope: !43)
!73 = !DILocation(line: 34, column: 5, scope: !43)
!74 = !DILocation(line: 35, column: 18, scope: !43)
!75 = !DILocation(line: 35, column: 5, scope: !43)
!76 = !DILocation(line: 37, column: 5, scope: !43)
!77 = !DILocation(line: 38, column: 5, scope: !43)
