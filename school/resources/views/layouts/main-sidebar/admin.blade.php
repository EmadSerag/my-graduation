<ul class="side-menu">
    {{-- Dashboard --}}
    <li class="slide">
        <a class="side-menu__item" href="{{ url('/' . ($page = 'dashboard')) }}">
            <i class="bi bi-speedometer2 mx-2 text-dark" style="font-size: 16px"></i>
            <span class="side-menu__label">{{ __('words.dashboard') }}</span>
        </a>
    </li>
    {{-- Grades --}}
    <li class="slide">
        <a class="side-menu__item" data-toggle="slide" href="{{ url('/' . ($page = '#')) }}">
            <i class="fa fa-bars mx-2 text-dark"></i>
            <span class="side-menu__label">{{ __('words.grades') }}</span><i
                class="angle fe fe-chevron-down"></i></a>
        <ul class="slide-menu">
            <li>
                <a class="slide-item" href="{{ route('grades.index') }}">{{ __('words.grades_list') }}</a>
            </li>
        </ul>
    </li>
    {{-- Classrooms --}}
    <li class="slide">
        <a class="side-menu__item" data-toggle="slide" href="{{ url('/' . ($page = '#')) }}">
            <i class="bi bi-people mx-2 text-dark" style="font-size: 16px"></i>
            <span class="side-menu__label">{{ __('classroom.classroom') }}</span><i
                class="angle fe fe-chevron-down"></i></a>
        <ul class="slide-menu">
            <li>
                <a class="slide-item" href="{{ route('classrooms.index') }}">{{ __('classroom.classroom_list') }}</a>
            </li>
        </ul>
    </li>
    {{-- Sections --}}
    <li class="slide">
        <a class="side-menu__item" data-toggle="slide" href="{{ url('/' . ($page = '#')) }}">
            <i class="bi bi-bar-chart-steps mx-2 text-dark" style="font-size: 16px"></i>
            <span class="side-menu__label">{{ __('sections.sections') }}</span><i
                class="angle fe fe-chevron-down"></i></a>
        <ul class="slide-menu">
            <li>
                <a class="slide-item" href="{{ route('sections.index') }}">{{ __('sections.section_list') }}</a>
            </li>
        </ul>
    </li>
    {{-- Guardians --}}
    <li class="slide">
        <a class="side-menu__item" data-toggle="slide" href="{{ url('/' . ($page = '#')) }}">
            <i class="bi bi-person-hearts mx-2 text-dark" style="font-size: 16px"></i>
            <span class="side-menu__label">{{ __('guardians.guardians') }}</span><i
                class="angle fe fe-chevron-down"></i></a>
        <ul class="slide-menu">
            <li>
                <a class="slide-item" href="{{ route('guardian') }}">{{ __('guardians.guardians_list') }}</a>
            </li>
        </ul>
    </li>
    {{-- Teachers --}}
    <li class="slide">
        <a class="side-menu__item" data-toggle="slide" href="{{ url('/' . ($page = '#')) }}">
            <i class="bi bi-person-video mx-2 text-dark" style="font-size: 16px"></i>
            <span class="side-menu__label">{{ __('teachers.teachers') }}</span><i
                class="angle fe fe-chevron-down"></i></a>
        <ul class="slide-menu">
            <li>
                <a class="slide-item" href="{{ route('teachers.index') }}">{{ __('teachers.teachers_list') }}</a>
            </li>
            <li>
                <a class="slide-item" href="{{ route('teachers.create') }}">{{ __('teachers.create') }}</a>
            </li>
        </ul>
    </li>
    {{-- Students --}}
    <li class="slide">
        <a class="side-menu__item" data-toggle="slide" href="{{ url('/' . ($page = '#')) }}">
            <i class="bi bi-people mx-2 text-dark" style="font-size: 16px"></i>
            <span class="side-menu__label">{{ __('students.students') }}</span><i
                class="angle fe fe-chevron-down"></i></a>
        <ul class="slide-menu">
            <li>
                <a class="slide-item" href="{{ route('students.index') }}">{{ __('students.students_list') }}</a>
            </li>
            <li>
                <a class="slide-item" href="{{ route('students.create') }}">{{ __('students.create') }}</a>
            </li>
            <li>
                <a class="slide-item" href="{{ route('promotions.index') }}">{{ __('students.promotion') }}</a>
            </li>
            <li>
                <a class="slide-item" href="{{ route('promotions.create') }}">{{ __('students.spm') }}</a>
            </li>
            <li>
                <a class="slide-item"
                    href="{{ route('graduates.create') }}">{{ __('students.create_graduated') }}</a>
            </li>
            <li>
                <a class="slide-item" href="{{ route('graduates.index') }}">{{ __('students.graduated_list') }}</a>
            </li>
        </ul>
    </li>
    {{-- Fees --}}
    <li class="slide">
        <a class="side-menu__item" data-toggle="slide" href="{{ url('/' . ($page = '#')) }}">
            <i class="bi bi-currency-dollar mx-2 text-dark" style="font-size: 16px"></i>
            <span class="side-menu__label">{{ __('fees.fees') }}</span><i class="angle fe fe-chevron-down"></i></a>
        <ul class="slide-menu">
            <li>
                <a class="slide-item" href="{{ route('fees.index') }}">{{ __('fees.fees_list') }}</a>
            </li>
            <li>
                <a class="slide-item" href="{{ route('fees.create') }}">{{ __('fees.create') }}</a>
            </li>
            <li>
                <a class="slide-item" href="{{ route('fee_invoices.index') }}">@lang('fees.invoices')</a>
            </li>
            <li>
                <a class="slide-item" href="{{ route('receipts.index') }}">@lang('receipts.receipts')</a>
            </li>
            <li>
                <a class="slide-item" href="{{ route('processings.index') }}">@lang('receipts.excluded')</a>
            </li>
            <li>
                <a class="slide-item" href="{{ route('payments.index') }}">@lang('payments.payments_vouchers')</a>
            </li>
        </ul>
    </li>
    {{-- Attendances --}}
    <li class="slide">
        <a class="side-menu__item" data-toggle="slide" href="{{ url('/' . ($page = '#')) }}">
            <i class="bi bi-person-bounding-box mx-2 text-dark" style="font-size: 16px"></i>
            <span class="side-menu__label">{{ __('attendances.attendance') }}</span><i
                class="angle fe fe-chevron-down"></i></a>
        <ul class="slide-menu">
            <li>
                <a class="slide-item" href="{{ route('attendances.index') }}">@lang('attendances.student_list')</a>
            </li>
        </ul>
    </li>
    {{-- Subjects --}}
    <li class="slide">
        <a class="side-menu__item" data-toggle="slide" href="{{ url('/' . ($page = '#')) }}">
            <i class="bi bi-columns-gap mx-2 text-dark" style="font-size: 16px"></i>
            <span class="side-menu__label">{{ __('subject.subjects') }}</span><i
                class="angle fe fe-chevron-down"></i></a>
        <ul class="slide-menu">
            <li>
                <a class="slide-item" href="{{ route('subjects.index') }}">@lang('subject.subjects_list')</a>
            </li>
        </ul>
    </li>
    {{-- Exams --}}
    <li class="slide">
        <a class="side-menu__item" data-toggle="slide" href="{{ url('/' . ($page = '#')) }}">
            <i class="bi bi-patch-question mx-2 text-dark" style="font-size: 16px"></i>
            <span class="side-menu__label">{{ __('exam.exams') }}</span><i class="angle fe fe-chevron-down"></i></a>
        <ul class="slide-menu">
            <li>
                <a class="slide-item" href="{{ route('exams.index') }}">@lang('exam.exam_list')</a>
            </li>
            <li>
                <a class="slide-item" href="{{ route('questions.index') }}">@lang('exam.question_list')</a>
            </li>
        </ul>
    </li>
    {{-- Lectures --}}
    <li class="slide">
        <a class="side-menu__item" data-toggle="slide" href="{{ url('/' . ($page = '#')) }}">
            <i class="bi bi-tv mx-2 text-dark" style="font-size: 16px"></i>
            <span class="side-menu__label">{{ __('lectures.lectures') }}</span><i
                class="angle fe fe-chevron-down"></i></a>
        <ul class="slide-menu">
            <li>
                <a class="slide-item" href="{{ route('lectures.index') }}">@lang('lectures.lectures_list')</a>
            </li>
        </ul>
    </li>
    {{-- Libraries --}}
    <li class="slide">
        <a class="side-menu__item" data-toggle="slide" href="{{ url('/' . ($page = '#')) }}">
            <i class="bi bi-book mx-2 text-dark" style="font-size: 16px"></i>
            <span class="side-menu__label">{{ __('library.library') }}</span><i
                class="angle fe fe-chevron-down"></i></a>
        <ul class="slide-menu">
            <li>
                <a class="slide-item" href="{{ route('libraries.index') }}">@lang('library.list_books')</a>
            </li>
        </ul>
    </li>
    {{-- Settings --}}
    <li class="slide">
        <a class="side-menu__item" data-toggle="slide" href="{{ url('/' . ($page = '#')) }}">
            <i class="bi bi-gear mx-2 text-dark" style="font-size: 16px"></i>
            <span class="side-menu__label">{{ __('words.settings') }}</span><i
                class="angle fe fe-chevron-down"></i></a>
        <ul class="slide-menu">
            <li>
                <a class="slide-item" href="{{ route('settings.index') }}">@lang('words.settings')</a>
            </li>
        </ul>
    </li>
</ul>
