{{-- localized datetime using jenssegers/date --}}
<td data-order="{{ $entry->{$column['name']} }}">
	{{ Date::parse($entry->{$column['name']})->format(config('luismareze.base.default_datetime_format')) }}
</td>